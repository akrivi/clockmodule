library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.NUMERIC_STD.ALL;

entity gameboy is
  port(CLOCK_50  : in std_logic;
       VGA_R : out std_logic_VECTOR (7 downto 0);
       VGA_G : out std_logic_VECTOR (7 downto 0);
       VGA_B : out std_logic_VECTOR (7 downto 0);
       VGA_HS    : out std_logic;
       VGA_VS   : out std_logic;
		 VGA_CLK : out std_logic;
		 VGA_BLANK_N : out std_logic;
		 VGA_SYNC_N : out std_logic;
		 LEDR : out std_logic_vector(9 downto 0);
		 KEY : in std_logic_vector(3 downto 0);
		 HEX0, HEX1,
		 HEX2, HEX3,
		 HEX4, HEX5  : OUT std_logic_vector(6 DOWNTO 0);
		 raspi_ss0   : in  STD_LOGIC;
	    raspi_ss1   : in  STD_LOGIC;
       raspi_mosi  : in  STD_LOGIC;
       raspi_miso  : out STD_LOGIC;
       raspi_sck   : in  STD_LOGIC);
end gameboy;

architecture Behavioral of gameboy is

signal clk25              : std_logic;  
signal clk12              : std_logic;  
signal clk50              : std_logic;
signal reset   : std_logic;
signal ahrst   : std_logic;

signal oam_rd_dat : std_logic_vector (31 downto 0); -- 4 bytes
signal oam_rd_addr : std_logic_vector (5 downto 0); -- 64 sprites (40 used)
signal oam_wr_dat : std_logic_vector (7 downto 0);
signal oam_wr_addr : std_logic_vector (7 downto 0); -- 256 bytes

signal reg_rd_dat : std_logic_vector (7 downto 0); -- 1 byte
signal reg_rd_addr : std_logic_vector (7 downto 0); -- 256 bytes
signal reg_wr_dat : std_logic_vector (7 downto 0);
signal reg_wr_addr : std_logic_vector (7 downto 0); -- 256 bytes

signal tdat_rd_dat : std_logic_vector (15 downto 0); -- 2 bytes
signal tdat_rd_addr : std_logic_vector (11 downto 0); -- 2*256*8 4k rows
signal tdat_wr_dat : std_logic_vector (7 downto 0);
signal tdat_wr_addr : std_logic_vector (12 downto 0); -- 2*256*16 8k bytes

signal tmap_rd_dat : std_logic_vector (7 downto 0); -- 1 byte
signal tmap_rd_addr : std_logic_vector (10 downto 0); -- 2*32*32 2k
signal tmap_wr_dat : std_logic_vector (7 downto 0);
signal tmap_wr_addr : std_logic_vector (10 downto 0); -- 2k

signal pixel : std_logic_vector (1 downto 0);
signal row     : integer range 0 to 1000;
signal col     : integer range 0 to 1000;
signal row_mul : integer range 0 to 1000;
signal col_mul : integer range 0 to 1000;
signal dispen  : std_logic;

-- memory modules
component oam
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;

component registers
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;

component tiledata
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
end component;

component tilemapram
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;

-- VGA module

COMPONENT vga_controller
	GENERIC(
    h_pulse  :  INTEGER   := 208;   --horiztonal sync pulse width in pixels
    h_bp     :  INTEGER   := 336;   --horiztonal back porch width in pixels
    h_pixels :  INTEGER   := 1920;  --horiztonal display width in pixels
    h_fp     :  INTEGER   := 128;   --horiztonal front porch width in pixels
    h_pol    :  STD_LOGIC := '0';   --horizontal sync pulse polarity (1 = positive, 0 = negative)
    v_pulse  :  INTEGER   := 3;     --vertical sync pulse width in rows
    v_bp     :  INTEGER   := 38;    --vertical back porch width in rows
    v_pixels :  INTEGER   := 1200;  --vertical display width in rows
    v_fp     :  INTEGER   := 1;     --vertical front porch width in rows
    v_pol    :  STD_LOGIC := '1');  --vertical sync pulse polarity (1 = positive, 0 = negative)
	PORT(
		pixel_clk : IN std_logic;
		reset_n : IN std_logic;          
		h_sync : OUT std_logic;
		v_sync : OUT std_logic;
		disp_ena : OUT std_logic;
		column : OUT INTEGER range 0 to 1000;
		row : OUT INTEGER range 0 to 1000
		);
	END COMPONENT;
	
COMPONENT pll
	PORT
	(
		refclk		:	 IN STD_LOGIC;
		rst		:	 IN STD_LOGIC;
		outclk_0		:	 OUT STD_LOGIC;
		outclk_1		:	 OUT STD_LOGIC;
		outclk_2		:	 OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT tilemap is
  generic(xoffset : integer := 100;
          yoffset : integer := 0;
			 screen_width : integer := 160;
			 screen_height : integer := 144);
  port(clk     : in std_logic;
       rst     : in std_logic;
		 
		 oam_rd_dat : in std_logic_vector (31 downto 0); -- 4 bytes
		 oam_rd_addr : out std_logic_vector (5 downto 0);

		 reg_rd_dat : in std_logic_vector (7 downto 0); -- 1 byte
		 reg_rd_addr : out std_logic_vector (7 downto 0);

		 tdat_rd_dat : in std_logic_vector (15 downto 0); -- 2 bytes
		 tdat_rd_addr : out std_logic_vector (11 downto 0);

		 tmap_rd_dat : in std_logic_vector (7 downto 0); -- 1 bytes
		 tmap_rd_addr : out std_logic_vector (10 downto 0);
		 
		 xpos    : in integer range 0 to 1000;
		 ypos    : in integer range 0 to 1000;
		 pixel   : out std_logic_vector(1 downto 0)
		 );
END COMPONENT;

COMPONENT showspi IS
  PORT (
    reset       : in std_logic;
    dig0, dig1,
	 dig2, dig3,
    dig4, dig5  : OUT std_logic_vector(6 DOWNTO 0); -- show key pressed on display in Hex dig1 (upper 4 bits) dig0 (lower 4 bits)
	 raspi_ss0   : in  STD_LOGIC;
	 raspi_ss1   : in  STD_LOGIC;
    raspi_mosi  : in  STD_LOGIC;
	 raspi_miso  : out STD_LOGIC;
    raspi_sck   : in  STD_LOGIC);
END COMPONENT;

begin
VGA_CLK <= clk25;
VGA_BLANK_N <='1' ;
VGA_SYNC_N <= '0';
reset <= KEY(0);
ahrst <= not reset;
col_mul <= col/2;
row_mul <= row/2;

oam_wr_addr  <= (others=>'0');
oam_wr_dat   <= (others=>'0');
tmap_wr_addr <= (others=>'0');
tmap_wr_dat  <= (others=>'0');
tdat_wr_addr <= (others=>'0');
tdat_wr_dat  <= (others=>'0');

process (clk25)  
begin  
  if rising_edge(clk25) then
    if dispen='1' then

      --here you paint!!
       VGA_R <= pixel & pixel & pixel & pixel;
       VGA_G <= pixel & pixel & pixel & pixel;
       VGA_B <= pixel & pixel & pixel & pixel;

    else
       VGA_R <= "00000000";
       VGA_G <="00000000";
       VGA_B <= "00000000";
    end if;
  end if;
end process;

process (clk12)
variable counter : unsigned(31 downto 0);
begin
  if reset = '0' then
    counter := (others => '0');
  elsif rising_edge(clk12) then
    counter := counter + 1;
	 reg_wr_dat <= std_logic_vector(counter(27 downto 20));
	 reg_wr_addr <= x"4A";
  end if;
end process;

showspi_inst : showspi PORT MAP (
	dig0 => HEX0,
	 dig1 => HEX1,
	 dig2 => HEX2,
	 dig3 => HEX3,
	dig4 => HEX4,
	 dig5 => HEX5,
	--LEDR => LEDR,
	raspi_ss0 => raspi_ss0,
	raspi_ss1 => raspi_ss1,
	raspi_mosi => raspi_mosi,
	raspi_miso => raspi_miso,
	raspi_sck => raspi_sck
);

pll_inst : pll PORT MAP (
  refclk => CLOCK_50,
  rst => ahrst,
  outclk_0 => clk50,
  outclk_1 => clk25,
  outclk_2 => clk12
);

tilemap_inst : tilemap PORT MAP (
  clk => clk12,
  rst => reset,
  oam_rd_dat => oam_rd_dat,
  oam_rd_addr => oam_rd_addr,
  reg_rd_dat => reg_rd_dat,
  reg_rd_addr => reg_rd_addr,
  tdat_rd_dat => tdat_rd_dat,
  tdat_rd_addr => tdat_rd_addr,
  tmap_rd_dat => tmap_rd_dat,
  tmap_rd_addr => tmap_rd_addr,
  xpos => col_mul,
  ypos => row_mul,
  pixel => pixel);

oam_inst : oam PORT MAP (
		data	 => oam_wr_dat,
		rdaddress	 => oam_rd_addr,
		rdclock	 => clk50,
		wraddress	 => oam_wr_addr,
		wrclock	 => clk50, -- fix
		wren	 => '0',
		q	 => oam_rd_dat
	);

registers_inst : registers PORT MAP (
		data	 => reg_wr_dat,
		rdaddress	 => reg_rd_addr,
		rdclock	 => clk50,
		wraddress	 => reg_wr_addr,
		wrclock	 => clk12, --fix
		wren	 => '1',
		q	 => reg_rd_dat
	);

tiledata_inst : tiledata PORT MAP (
		data	 => tdat_wr_dat,
		rdaddress	 => tdat_rd_addr,
		rdclock	 => clk50,
		wraddress	 => tdat_wr_addr,
		wrclock	 => clk50, -- fix
		wren	 => '0',
		q	 => tdat_rd_dat
	);
	
tilemapram_inst : tilemapram PORT MAP (
		data	 => tmap_wr_dat,
		rdaddress	 => tmap_rd_addr,
		rdclock	 => clk50,
		wraddress	 => tmap_wr_addr,
		wrclock	 => clk50,
		wren	 => '0',
		q	 => tmap_rd_dat
	);

Inst_vga_controller: vga_controller   
 GENERIC MAP (
    h_pulse  => 96,   --horiztonal sync pulse width in pixels
    h_bp     => 48,   --horiztonal back porch width in pixels
    h_pixels => 640,  --horiztonal display width in pixels
    h_fp     => 16,   --horiztonal front porch width in pixels
    h_pol    => '0',   --horizontal sync pulse polarity (1 = positive, 0 = negative)
    v_pulse  => 2,     --vertical sync pulse width in rows
    v_bp     => 33,    --vertical back porch width in rows
    v_pixels => 480,  --vertical display width in rows
    v_fp     => 10,     --vertical front porch width in rows
    v_pol    => '0')
PORT MAP(
		pixel_clk => clk25,
		reset_n => reset,
		h_sync => VGA_HS ,
		v_sync => VGA_VS,
		disp_ena => dispen,
		column => col,
		row => row
	);


end Behavioral;  