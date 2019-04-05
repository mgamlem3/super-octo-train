library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

entity ALU is
    generic(width: integer := 16);
    port(input_a, input_b:  in STD_LOGIC_VECTOR((width-1) downto 0);
        shift:              in STD_LOGIC_VECTOR(3 downto 0);
        alucontrol:         in STD_LOGIC_VECTOR(3 downto 0);
        result:             inout STD_LOGIC_VECTOR((width-1) downto 0);
        zero:               out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
   component ShiftLeft is
   generic ( N : integer := 16 );
        Port (    a : in  STD_LOGIC_VECTOR(N-1 downto 0);
            shamt : in STD_LOGIC_VECTOR(integer(ceil(log2(real(N))))-1 downto 0);
                c : out  STD_LOGIC_VECTOR(N-1 downto 0) );
    end component ShiftLeft;

    component ShiftRight is
       generic ( N : integer := 16 );
       Port (    a : in  STD_LOGIC_VECTOR(N-1 downto 0);
	         shamt : in STD_LOGIC_VECTOR(integer(ceil(log2(real(N))))-1 downto 0);
                 c : out  STD_LOGIC_VECTOR(N-1 downto 0) );
    end component ShiftRight;

    signal b2, sum, sub, sl, sr, slt, le, ge, eq, nle, nge, lt, gt: STD_LOGIC_VECTOR((width-1) downto 0);
    signal const_zero: STD_LOGIC_VECTOR((width-1) downto 0) := (others => '0');

begin
      -- hardware inverter for 2's complement 
      b2 <= not input_b when alucontrol(2) = '1' else input_b;
      
      -- hardware adder
      sum <= input_a + b2 + alucontrol(2);
      
      -- subtraction
      sub <= input_a - input_b;
      
      -- shift left
      shifter_l: ShiftLeft generic map (N => 16) port map(a=>input_a, shamt=>shift, c => sl);
      
      -- shift right
      shifter_r: ShiftRight generic map (N => 16) port map(a=>input_a, shamt=>shift, c => sr);
      
      -- less than or equal
      le <= "1" when ( input_a <= input_b) else "0";
      
      -- greater than or equal
      ge <= "1" when ( input_a >= input_b) else "0";
      
      -- equal
      eq <= "1" when ( sub = (others => '0') ) else "0";
      
      -- less than or equal
      lt <= "1" when ( input_a < input_b) else "0";
           
      -- greater than or equal
      gt <= "1" when ( input_a > input_b) else "0";
          
      -- determine alu operation from alucontrol bits 0 and 1
      with alucontrol(1 downto 0) select result <=
        sum                  when "0000",
        sub                  when "0001",
        sr                   when "0010",
        sl                   when "0011",
        input_a and input_b  when "0100",
        input_a or input_b   when "0101",
        input_a xor input_b  when "0110",
        input_a nor input_b  when "0111",
        le                   when "1000",
        ge                   when "1001",
        eq                   when "1010",
        not(le)              when "1011",
        not(ge)              when "1100",
        lt                   when "1101",
        gt                   when "1110",
        slt     when others;
            
      -- set the zero flag if result is 0
      zero <= '1' when result = const_zero else '0';


end Behavioral;