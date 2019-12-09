library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_RS232Rxd is
end tb_RS232Rxd;

architecture behavior of tb_RS232Rxd is

   -- Component Declaration for the Unit Under Test (UUT)

   component RS232Rxd
      port (
         Reset    : in std_logic;
         Clock16x : in std_logic;
         Rxd      : in std_logic;
         DataOut1 : out std_logic_vector(7 downto 0);
         DataOut2 : out std_logic_vector(7 downto 0)
      );
   end component;
   --Inputs
   signal tb_Reset    : std_logic := '0';
   signal tb_Clock16x : std_logic := '0';
   signal tb_Rxd      : std_logic := '0';

   --Outputs
   signal tb_DataOut1 : std_logic_vector(7 downto 0);
   signal tb_DataOut2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clock16x_period : TIME := 6.5 us;

begin

   -- Instantiate the Unit Under Test (UUT)
   uut : RS232Rxd port map(
      Reset    => tb_Reset,
      Clock16x => tb_Clock16x,
      Rxd      => tb_Rxd,
      DataOut1 => tb_DataOut1,
      DataOut2 => tb_DataOut2
   );

   -- Clock process definitions
   tb_Clock16x_process : process
   begin
      tb_Clock16x <= '0';
      wait for Clock16x_period/2;
      tb_Clock16x <= '1';
      wait for Clock16x_period/2;
   end process;

   -- Stimulus process
   stim_proc : process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;
      wait for Clock16x_period * 10;

      -- insert stimulus here 
      tb_Reset <= '1';
      wait for 1.5 * Clock16x_period;
      tb_Reset <= '0';

      tb_rxd   <= '1';
      wait for 5.5 * Clock16x_period;
      tb_rxd <= '0'; -- Start bit
      wait for 16 * Clock16x_period;
      tb_rxd <= '0'; -- Bit 0
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Bit 1
      wait for 16 * Clock16x_period;
      tb_rxd <= '0'; -- Bit 2
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Bit 3
      wait for 16 * Clock16x_period;
      tb_rxd <= '0'; -- Bit 4
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Bit 5
      wait for 16 * Clock16x_period;
      tb_rxd <= '0'; -- Bit 6
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Bit 7
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Stop bit
      wait for 16 * Clock16x_period;

      tb_rxd <= '0'; -- Start bit
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Bit 0
      wait for 16 * Clock16x_period;
      tb_rxd <= '0'; -- Bit 1
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Bit 2
      wait for 16 * Clock16x_period;
      tb_rxd <= '0'; -- Bit 3
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Bit 4
      wait for 16 * Clock16x_period;
      tb_rxd <= '0'; -- Bit 5
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Bit 6
      wait for 16 * Clock16x_period;
      tb_rxd <= '0'; -- Bit 7
      wait for 16 * Clock16x_period;
      tb_rxd <= '1'; -- Stop bit
      wait for 16 * Clock16x_period;

      tb_Reset <= '1';
      wait for 1.5 * Clock16x_period;
      tb_Reset <= '0';

      wait;
   end process;

end;