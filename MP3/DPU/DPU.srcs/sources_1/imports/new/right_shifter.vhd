------------------------------------------------
-- Module Name: ShiftLeft - Behavioral 
-- This module uses a for loop to simplify
-- the VHDL code for a multi-shifter. Remember
-- the for loop will create N parallel signals!
------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;
use IEEE.math_real.all;

entity ShiftRight is
   generic ( N : integer := 16 );
   Port (    a : in  STD_LOGIC_VECTOR(N-1 downto 0);
	     shamt : in STD_LOGIC_VECTOR(integer(ceil(log2(real(N))))-1 downto 0);
             c : out  STD_LOGIC_VECTOR(N-1 downto 0) );
end ShiftRight;

architecture Behavioral of ShiftRight is
begin
 process(a, shamt)
 begin
    for i in 0 to N-1 loop
        if shamt = std_logic_vector(to_unsigned(i,N)) then
            c <= std_logic_vector( unsigned(a) srl i );
        end if;
    end loop;
 end process;
 
end Behavioral;
