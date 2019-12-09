library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity RS232Txd is
    port (
        Reset, Send, Clock16x : in std_logic;
        DataIn                : in std_logic_vector(7 downto 0);
        Txd                   : out std_logic);
end RS232Txd;

architecture Behavioral of RS232Txd is
    attribute enum_encoding : STRING;
    -- state definitions
    type stateType is (stIdle, stData, stStop);
    attribute enum_encoding of stateType                                 : type is "00 01 11";
    signal presState                                                     : stateType;
    signal nextState                                                     : stateType;
    signal iSend, iReset, iClock1xEnable, iEnableTxdBuffer, iEnableShift : std_logic;
    signal iTxdBuffer                                                    : std_logic_vector (7 downto 0);
    signal iClockDiv                                                     : std_logic_vector (3 downto 0);
    signal iClock1x                                                      : std_logic;
    signal iNoBitsSent                                                   : std_logic_vector (3 downto 0);
begin

    process (Clock16x)
    begin
        if Clock16x'event and Clock16x = '1' then
            if Reset = '1' or iReset = '1' then
                iClock1xEnable <= '0';
                iClockDiv      <= "1010";
                iClock1x       <= '0';
            else
                iSend <= Send;
            end if;
            if Send = '0' and iSend = '1' and iClock1xEnable = '0' then
                iClock1xEnable <= '1';
            end if;
            if iClock1xEnable = '1' then
                iClockDiv <= iClockDiv + '1';
                iClock1x  <= iClockDiv(3);
            end if;
        end if;
    end process;

    process (iClock1xEnable, iClock1x)
    begin
        if iClock1xEnable = '0' then
            iNoBitsSent <= (others => '0');
            presState   <= stIdle;
            Txd         <= '1';
        elsif iClock1x'event and iClock1x = '1' then
            presState <= nextState;
            if iEnableTxdBuffer = '1' then
                iTxdBuffer <= DataIn;
                Txd        <= '0';
            end if;
            if iEnableShift = '1' then
                iNoBitsSent <= iNoBitsSent + '1';
                Txd         <= iTxdBuffer(0);
                iTxdBuffer  <= '0' & iTxdBuffer(7 downto 1);
            end if;
        end if;
    end process;

    process (presState, iClock1xEnable, iNoBitsSent)
    begin
        iReset           <= '0';
        iEnableShift     <= '0';
        iEnableTxdBuffer <= '0';

        case presState is
            when stIdle =>
                if iClock1xEnable = '1' then
                    nextState        <= stData;
                    iEnableTxdBuffer <= '1';
                else
                    nextState <= stIdle;
                end if;
            when stData =>
                if iNoBitsSent = "1000" then
                    nextState <= stStop;
                else
                    iEnableShift <= '1';
                    nextState    <= stData;
                end if;
            when stStop =>
                nextState <= stIdle;
                iReset    <= '1';
        end case;
    end process;
end Behavioral;