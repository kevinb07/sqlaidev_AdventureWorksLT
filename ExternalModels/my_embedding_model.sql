CREATE EXTERNAL MODEL [my_embedding_model]
    AUTHORIZATION [dbo]
WITH (
LOCATION = N'https://kboodh007-proj-sqlailab-resource.openai.azure.com/openai/deployments/text-embedding-3-small/embeddings?api-version=2024-10-21',
API_FORMAT = N'Azure OpenAI',
MODEL_TYPE = EMBEDDINGS,
MODEL = N'text-embedding-3-small',
CREDENTIAL = [https://kboodh007-proj-sqlailab-resource.openai.azure.com]
);


GO

