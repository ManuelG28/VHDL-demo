library ieee;
use ieee.std_logic_1164.all;
entity endLabelsDemo is
	port(
		clk,rst_n : in std_logic
	);
end endLabelsDemo;

architecture  myArchitecture of endLabelsDemo is
begin
    myProcess: process (clk,rst_n)
	begin
	clockedIf: if rst_n = '0' then
		null;
	elsif rising_edge(clk) then
	-- case
	-- loop
	end if clockedIf;
	end process myProcess;
end architecture myArchitecture;

configuration myConfiguration of endLabelsDemo is
    for myArchitecture
    end for;
end myConfiguration;
 
package endLabelsPackage is
    constant four:integer := 4;
    type INTEGER is range -2147483647 to 2147483647;
    
    function foo (i,j:integer) return integer;
    function "+" (i,j:integer) return integer;
    type recordType is record
    	field1: integer;
    end record recordType;
    
    type volume is range 0 to 1000.0 
    units
    	pint;
    	quart = 2 pint;
    	gallon = 4 quart;
    end units volume;
end package endLabelsPackage;
 
package body endLabelsPackage is
	--TODO make type definition of package difinition visible in package body
    function foo (i,j:integer) return integer is -- TODO link with function definition
    begin
      return i+j;	
    end function foo; --TODO
    
    function "+" (i,j:integer) return integer is
    begin
      return i+j;	
    end function "+"; --TODO
end package body endLabelsPackage;

-- generate
-- block