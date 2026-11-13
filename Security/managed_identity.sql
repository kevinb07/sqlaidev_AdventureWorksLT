 -- Create a credential using Managed Identity
 CREATE DATABASE SCOPED CREDENTIAL [https://kboodh007-proj-sqlailab-resource.openai.azure.com]
 WITH IDENTITY = 'Managed Identity', SECRET = '{"resourceid":"https://cognitiveservices.azure.com"}';
 GO