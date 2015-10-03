require "dbi"

sql = "SELECT TOP 100 PERCENT * FROM Lookups WITH (NOLOCK) ORDER BY CASE WHEN ISNUMERIC(value) = 1 THEN CAST(value AS int) ELSE -1 END ASC";

p sql;

p "testing dbi";

cn = DBI.connect('DBI:ODBC:Test', 'Test', '1CANhazpazw3rd!');

if (cn.connected?)
	version = cn.select_one("SELECT @@VERSION AS [Version]");
	
	puts version[:Version];

	cn.select_all(sql) do |row|
	    puts "#{row[:id]} text=\'#{row[:text]}\', value=\'#{row[:value]}\'";
	end;

	cn.disconnect();
end