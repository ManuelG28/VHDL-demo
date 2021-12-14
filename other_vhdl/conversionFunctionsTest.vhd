entity e1 is
  generic (a,b,c :integer); 
  port (clk : in bit;
        reset: in bit;
        data : out bit_vector(7 downto 0));
end entity;

architecture RTL of e1 is
begin
end architecture;

entity top is
end entity;

architecture RTL of top is
  signal c : bit;
  signal r : bit;
  signal d : std.standard.bit_vector(7 downto 0);
  constant data: integer :=0;
  constant da: integer :=0;
begin
 inst: entity work.e1(rtl)
 port map(	clk=>c,
	reset=>r,
	data(0)=>d(0)
);
inst1: entity work.e1(rtl)
 port map(
	bit_vector(data(0))=>d(0)
);
inst2: entity work.e1(rtl)
 port map(clk=>c,
	reset=>r,
	data(0)=>d(0)
);
-- inst3: entity work.e1(rtl)
--  port map(clk=>c,
-- 	reset=>r,
-- 	work.test.bit_vector(data)=>d(0)
--  );
inst4: entity work.e1(rtl)
 port map(clk=>c,
	reset=>r,
	bit_vector(data)=>d(0)
);
inst5: entity work.e1(rtl)
 port map(clk=>c,
	reset=>r,
	data(da)=>d(1 downto 0) --does not work
);
end;