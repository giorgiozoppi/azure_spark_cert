export DATABRICKS_AAD_TOKEN=$(az account get-access-token --resource 2ff814a6-3304-4ab8-85cb-cd0e6f879c1d | jq .accessToken --raw-output)

