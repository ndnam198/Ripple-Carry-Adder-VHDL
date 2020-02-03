library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Ripple_Carry_Adder_tb is
end;

architecture bench of Ripple_Carry_Adder_tb is

  component Ripple_Carry_Adder
      port(   A :in std_logic_vector(15 downto 0);
              B :in std_logic_vector(15 downto 0);
              Cin :in std_logic;
              S   :out std_logic_vector(15 downto 0);
              Cout:out std_logic);
  end component;

  signal A: std_logic_vector(15 downto 0);
  signal B: std_logic_vector(15 downto 0);
  signal Cin: std_logic;
  signal S: std_logic_vector(15 downto 0);
  signal Cout: std_logic;

begin

  uut: Ripple_Carry_Adder port map ( A    => A,
                                     B    => B,
                                     Cin  => Cin,
                                     S    => S,
                                     Cout => Cout );

  stimulus: process
  begin
  
    -- Put initialisation code here

  wait for 50ns;
  a <= X"000F";
  b <= X"0000";
  cin <= '0';
  --2
  wait for 50ns;
  a <= X"00FF";
  b <= X"0000";
  cin <= '1';
  --3
  wait for 50ns;
  a <= X"0FFF";
  b <= X"0000";
  cin <= '0';
  --4
  wait for 50ns;
  a <= X"FFFF";
  b <= X"0000";
  cin <= '1';
  --5
  wait for 50ns;
  a <= X"FFFF";
  b <= X"000F";
  cin <= '0';
  --6
  wait for 50ns;
  a <= X"FFFF";
  b <= X"00FF";
  cin <= '1';
  --7
  wait for 50ns;
  a <= X"FFFF";
  b <= X"0FFF";
  cin <= '0';
  --8
  wait for 50ns;
  a <= X"FFFF";
  b <= X"FFFF";
  cin <= '1';
    -- Put test bench stimulus code here

  wait;
  end process;
end bench;