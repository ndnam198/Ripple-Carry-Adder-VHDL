library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------------------
entity full_adder is
    port(a : in std_logic;
        b : in std_logic;
        cin : in std_logic;
        s : out std_logic;
        cout : out std_logic);
end full_adder;
-----------------------------------------------------------
architecture behavior_full_adder of full_adder is 
    begin 
    s <= a xor b xor cin;
    cout <= (a and b) or (a and cin) or (b and cin);
end behavior_full_adder;
-------------------------------------------------------------
-------------------------------------------------------------
       
library ieee;  
use ieee.std_logic_1164.all;
----------------------------------------------
entity Ripple_Carry_Adder is
    port(   A :in std_logic_vector(15 downto 0);
            B :in std_logic_vector(15 downto 0);
            Cin :in std_logic;
            S   :out std_logic_vector(15 downto 0);
            Cout:out std_logic);
end Ripple_Carry_Adder;
------------------------------------------------
architecture Behavior of Ripple_Carry_Adder is
    -- full_adder component declaration
    component full_adder
    port(A: in std_logic;
         B : in std_logic;
         Cin: in std_logic;
         S :out std_logic;
         Cout: out std_logic);
    end component;
-- carry declaration
    signal C: std_logic_vector(15 downto 1);
-- behavior
    begin 
--port mapping full_adder 16 times
    FA1: full_adder port map(A(0), B(0), Cin, S(0), C(1));
    FA2: full_adder port map(A(1), B(1), C(1), S(1), C(2));
    FA3: full_adder port map(A(2), B(2), C(2), S(2), C(3));
    FA4: full_adder port map(A(3), B(3), C(3), S(3), C(4));
    FA5: full_adder port map(A(4), B(4), C(4), S(4), C(5));
    FA6: full_adder port map(A(5), B(5), C(5), S(5), C(6));
    FA7: full_adder port map(A(6), B(6), C(6), S(6), C(7));
    FA8: full_adder port map(A(7), B(7), C(7), S(7), C(8));
    FA9: full_adder port map(A(8), B(8), C(8), S(8), C(9));
    FA10: full_adder port map(A(9), B(9), C(9), S(9), C(10));
    FA11: full_adder port map(A(10), B(10), C(10), S(10), C(11));
    FA12: full_adder port map(A(11), B(11), C(11), S(11), C(12));
    FA13: full_adder port map(A(12), B(12), C(12), S(12), C(13));
    FA14: full_adder port map(A(13), B(13), C(13), S(13), C(14));
    FA15: full_adder port map(A(14), B(14), C(14), S(14), C(15));
    FA16: full_adder port map(A(15), B(15), C(15), S(15), Cout);
end Behavior;