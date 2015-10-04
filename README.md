# Ruby
Some simple Ruby version 2.2.3 x64 test to access SQL Server

These Ruby scripts are simple scripts to test various access to Microsoft SQL Server 2012 databases using DBI and Sequel gems.  

Of course, you will need to setup the database using SSMS or the like.  I have a table called "Lookups" with three columns for testing.

The schema looks like this:

USE [Test]
GO

/****** Object:  Table [dbo].[Lookups]    Script Date: 10/3/2015 12:57:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Lookups]
\(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[text] [varchar](64) NOT NULL,
	[value] [varchar](32) NULL,
	CONSTRAINT [PK_Lookups] PRIMARY KEY CLUSTERED 
	(
		[id] ASC
	) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON
	) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

I am using SQL Server 2012 Express on my local Windows 10 machine the the server name I used is ".\SQLEXPRESS".  Create a login
called Test and adjust the password as required.  Test is in the dbowner role for the database but that's not a requirement for such 
a simple example.

My local gems look like this:

*** LOCAL GEMS ***

actionmailer (4.2.4)
actionpack (4.2.4)
actionview (4.2.4)
activejob (4.2.4)
activemodel (4.2.4)
activerecord (4.2.4, 1.15.6)
activerecord-sqlserver-adapter (4.2.4)
activesupport (4.2.4, 1.4.4)
arel (6.0.3)
bigdecimal (1.2.7, 1.2.6)
builder (3.2.2)
bundler (1.10.6)
dbd (0.1.3)
dbd-odbc (0.2.5)
dbi (0.4.5)
deprecated (2.0.1)
erubis (2.7.0)
excon (0.45.4)
globalid (0.3.6)
i18n (0.7.0)
io-console (0.4.3)
json (1.8.3, 1.8.1)
link_header (0.0.8)
loofah (2.0.3)
mail (2.6.3)
mime-types (2.6.2)
mini_portile (0.6.2)
minitest (5.8.1, 5.4.3)
multi_json (1.11.2)
neography (1.7.3)
nokogiri (1.6.6.2 x64-mingw32)
odbc-rails (1.5)
os (0.9.6)
power_assert (0.2.4, 0.2.2)
psych (2.0.15, 2.0.8)
rack (1.6.4)
rack-test (0.6.3)
rails (4.2.4)
rails-deprecated_sanitizer (1.0.3)
rails-dom-testing (1.0.7)
rails-html-sanitizer (1.0.2)
railties (4.2.4)
rake (10.4.2)
rdf (1.1.16.1)
rdoc (4.2.0)
ruby-odbc (0.99997)
ruby_peter_v (0.0.13)
rubyzip (1.1.7)
sequel (4.27.0)
sprockets (3.3.5)
sprockets-rails (2.3.3)
test-unit (3.1.4, 3.0.8)
thor (0.19.1)
thread_safe (0.3.5)
tzinfo (1.2.2)

