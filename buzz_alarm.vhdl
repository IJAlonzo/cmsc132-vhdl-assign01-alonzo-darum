library IEEE; use IEEE.std_logic_1164.all;

entity buzz_alarm is
       port (	buzz_in 	: in std_logic_vector(2 downto 0); 
       			buzz_out 	: in std_logic_vector(2 downto 0); 
       			alarm 		: out std_logic_116 	
       			);
end buzz_alarm;

architecture behav of buzz_alarm is
     begin
	    alarm <= (	(buzz_in(0) and buzz_out(0)) or
	       			(buzz_in(1) and buzz_out(1)) or
	       			(buzz_in(2) and buzz_out(2)) or
	       			(buzz_in(0) and buzz_out(1)) or
	       			(buzz_in(0) and buzz_out(2)) or
	       			(buzz_in(1) and buzz_out(0)) or
	       			(buzz_in(1) and buzz_out(2)) or
	       			(buzz_in(2) and buzz_out(1)) or
	       			(buzz_in(2) and buzz_out(0)) );    
     end architecture behav;