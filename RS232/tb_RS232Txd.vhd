library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_RS232Txd is
end tb_RS232Txd;

architecture behavior of tb_RS232Txd is

   -- Component Declaration for the Unit Under Test (UUT)

   component RS232Txd
      port (
         Reset    : in std_logic;
         Send     : in std_logic;
         Clock16x : in std_logic;
         DataIn   : in std_logic_vector(7 downto 0);
         Txd      : out std_logic
      );
   end component;
   --Inputs
   signal tb_Reset    : std_logic                    := '0';
   signal tb_Send     : std_logic                    := '0';
   signal tb_Clock16x : std_logic                    := '0';
   signal tb_DataIn   : std_logic_vector(7 downto 0) := (others => '0');

   --Outputs
   signal tb_Txd : std_logic;

   -- Clock period definitions
   constant Clock16x_period : TIME := 6.5 us;

begin

   -- Instantiate the Unit Under Test (UUT)
   uut : RS232Txd port map(
      Reset    => tb_Reset,
      Send     => tb_Send,
      Clock16x => tb_Clock16x,
      DataIn   => tb_DataIn,
      Txd      => tb_Txd
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

      --Reset Everything
      tb_Reset <= '1';
      wait for 2 * Clock16x_period;
      tb_Reset <= '0';
      tb_Send  <= '0';
      wait for Clock16x_period;

      tb_DataIn <= "10101010";
      wait for Clock16x_period;
      tb_Send <= '1';
      wait for 4 * Clock16x_period;
      tb_Send <= '0';
      wait for 64 * Clock16x_period;
      tb_Send <= '1';
      wait for 4 * Clock16x_period;
      tb_Send <= '0';
      wait for 200 * Clock16x_period;

      tb_DataIn <= "01010101";
      wait for Clock16x_period;
      tb_Send <= '1';
      wait for 4 * Clock16x_period;
      tb_Send <= '0';
      wait for 64 * Clock16x_period;
      tb_Send <= '1';
      wait for 4 * Clock16x_period;
      tb_Send <= '0';
      wait for 200 * Clock16x_period;

      tb_DataIn <= "11110000";
      wait for Clock16x_period;
      tb_Send <= '1';
      wait for 4 * Clock16x_period;
      tb_Send <= '0';
      wait for 64 * Clock16x_period;
      tb_Send <= '1';
      wait for 4 * Clock16x_period;
      tb_Send <= '0';
      wait for 200 * Clock16x_period;

      tb_DataIn <= "00001111";
      wait for Clock16x_period;
      tb_Send <= '1';
      wait for 4 * Clock16x_period;
      tb_Send <= '0';
      wait for 64 * Clock16x_period;
      tb_Send <= '1';
      wait for 4 * Clock16x_period;
      tb_Send <= '0';
      wait for 200 * Clock16x_period;

      wait;
   end process;

end;