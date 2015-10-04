require "sequel";

Sequel.datetime_class = DateTime;

sql = "SELECT TOP 100 PERCENT * FROM Lookups WITH (NOLOCK) ORDER BY CASE WHEN ISNUMERIC(value) = 1 THEN CAST(value AS int) ELSE value END ASC";

p sql;

p "testing sequel"

begin
	cn = Sequel.odbc('Test', :user => "Test", :password => "1CANhazpazw3rd!");

	version = cn.fetch("SELECT @@VERSION AS [Version]");
	
	puts (version[:version][:version]);

	cn.fetch(sql) do |row|
		puts ("#{row[:id]} text=\'#{row[:text]}\', value=\'#{row[:value]}\'");
	end;

	cn.disconnect();
rescue 
	puts ("Exception in #{$!.class}: #{$!}");
end;
