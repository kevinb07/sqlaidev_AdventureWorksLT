 -- Create a database master key if one doesn't exist
 IF NOT EXISTS (SELECT * FROM sys.symmetric_keys WHERE name = '##MS_DatabaseMasterKey##')
     CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'KBadmin07';
 GO