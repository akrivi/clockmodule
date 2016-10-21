library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.NUMERIC_STD.ALL;

entity tilemap is
  generic(xoffset : integer := 100;
          yoffset : integer := 0;
			 screen_width : integer := 160;
			 screen_height : integer := 144);
  port(clk     : in std_logic;
       rst     : in std_logic;
		 memaddr : out std_logic_vector(15 downto 0);
		 memdat  : in std_logic_vector(7 downto 0);
		 xpos    : in integer range 0 to 1000;
		 ypos    : in integer range 0 to 1000;
		 pixel   : out std_logic_vector(1 downto 0)
		 );
end tilemap;

architecture bhv of tilemap is
  FUNCTION tile_nr_addr (xpos:integer; ypos:integer) RETURN unsigned IS
	 variable position : unsigned (15 downto 0);
	  variable temp1 : integer; 
	  variable temp2 : integer;
	   variable temp3 : unsigned (7 downto 0);
	  variable ypos3 : unsigned (2 downto 0); 
	  variable address : unsigned (15 downto 0);
	  variable tileposition :integer;
	  variable tilestart: integer;
  BEGIN
    --return "00000000";

        temp1 := xpos * 1/8;   
	    temp2 := ypos * 1/8;
	    position := to_unsigned(ypos *32 + xpos, 16) ; --find position that is pointed
		tileposition := 9800 + temp2*32 + temp1;  --tile number
		tilestart := 8000 + 16*tileposition ;     --start of tile
		temp3 := to_unsigned(ypos,8);
		ypos3 := temp3(2 downto 0);
		return to_unsigned(8000 + tileposition + to_integer(ypos3) *2, 16); 
	   
  END tile_nr_addr;
   FUNCTION tile_data (tilenr:unsigned; ypos:integer) RETURN unsigned IS
    VARIABLE res : std_logic_vector(6 DOWNTO 0);
  BEGIN
    return "00000000";
  END tile_data;
begin
process (clk, rst)
variable tile     : std_logic_vector(15 downto 0);
variable tile_int : std_logic_vector(15 downto 0);
variable rowaddr  : unsigned(15 downto 0);
begin
  if(rst = '0') then
    tile := (others => '0');
    tile_int := (others => '0');
	 rowaddr := (others => '0');
  elsif rising_edge(clk) then
    if xpos < xoffset then
      case to_unsigned(xpos-xoffset, 3) is
		  when "000" =>
		    pixel <= tile(0) & tile(8);
		  when "001" =>
		    pixel <= tile(1) & tile(9);
		  when "010" =>
		    pixel <= tile(2) & tile(10);
		  when "011" =>
		    pixel <= tile(3) & tile(11);
		  when "100" =>
		    pixel <= tile(4) & tile(12);
			 rowaddr := tile_nr_addr(xpos-xoffset+4, ypos-yoffset);
			 memaddr <= std_logic_vector(rowaddr);
		  when "101" =>
		    pixel <= tile(5) & tile(13);
			 rowaddr := tile_data(unsigned(memdat), ypos-yoffset);
			 memaddr <= std_logic_vector(rowaddr);
		  when "110" =>
		    pixel <= tile(6) & tile(14);
			 tile_int(7 downto 0) := memdat;
			 memaddr <= std_logic_vector(rowaddr+1);
		  when "111" =>
		    pixel <= tile(7) & tile(15);
			 tile_int(15 downto 8) := memdat;
			 tile := tile_int;
		end case;
	 end if;
  end if;
end process;
end;