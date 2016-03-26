-- Blank Test Bench
library IEEE; use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Test Bench has no ports
entity tb is
end entity tb;

architecture tb of tb is
	-- initialize signals to connect to UUT (Unit Under Test)
	signal bin, bout 	: std_logic_vector(2 downto 0);
	signal a, tin, tout : std_logic;

	-- connect to main VHDL file
	component buzz_alarm is 
		port (	buzz_in, 	: in std_logic_vector(2 downto 0); 
       			buzz_out 	: in std_logic_vector(2 downto 0); 
       			alarm 		: out std_logic_116 	
       			);
	end component buzz_alarm;

begin
	uut: component buzz_alarm port map (bin, bout, a);

	-- check test cases
	process

		-- initialize some variables
		variable error_count: integer := 0;
		-- intialization for loop
		variable test_in: unsigned(5 downto 0); -- 2 bits
		variable output: std_logic; 
	
	begin
		
	end process;

end architecture tb;


