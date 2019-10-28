library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity RS232 is
    port (
        Reset, Clock16x, Rxd, Send : in std_logic;
        DataOut1, DataOut2         : out std_logic_vector (7 downto 0);
        DataIn                     : in std_logic_vector(7 downto 0);
        Txd                        : out std_logic
    );
end RS232;

architecture Behavioral of RS232 is
    component Rs232Rxd
        port (
            Reset, Clock16x, Rxd : in std_logic;
            DataOut1, DataOut2   : out std_logic_vector (7 downto 0));
    end component;
    component RS232Txd
        port (
            Reset, Send, Clock16x : in std_logic;
            DataIn                : in std_logic_vector(7 downto 0);
            Txd                   : out std_logic);
    end component;
begin
    U1 : Rs232Rxd port map(
        Reset    => Reset,
        Clock16x => Clock16x,
        Rxd      => Rxd,
        DataOut1 => DataOut1,
        DataOut2 => DataOut2);
    U2 : Rs232Txd port map(
        Reset    => Reset,
        Send     => Send,
        Clock16x => Clock16x,
        DataIn   => DataIn,
        Txd      => Txd);

end Behavioral;