library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity D4to7Decoder is
	port (
		q   : in STD_LOGIC_VECTOR (3 downto 0);
		seg : out STD_LOGIC_VECTOR (6 downto 0));
end D4to7Decoder;

architecture Behavioral of D4to7Decoder is
begin
	Seg <= "0000001" when q = "0000" else
		"1001111" when q = "0001" else
		"0010010" when q = "0010" else
		"0000110" when q = "0011" else
		"1001100" when q = "0100" else
		"0100100" when q = "0101" else
		"0100000" when q = "0110" else
		"0001111" when q = "0111" else
		"0000000" when q = "1000" else
		"0000100" when q = "1001" else
		"0001000" when q = "1010" else
		"1100000" when q = "1011" else
		"0110001" when q = "1100" else
		"1000010" when q = "1101" else
		"0110000" when q = "1110" else
		"0111000" when q = "1111" else
		"1111111";
end Behavioral;