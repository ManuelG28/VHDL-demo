use work.mypackage.all;
use work.mymodule;

entity mymodule_testbench is
end mymodule_testbench;

architecture sim of mymodule_testbench is
signal clk : integer;
begin

--generate clock ...

mymodule1: entity mymodule
	port map (clk => clk);

end architecture sim;