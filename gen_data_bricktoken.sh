#!/bin/bash
DATABRICKS_URI="https://adb-2136109992264277.17.azuredatabricks.net/api/2.0/token/create" 
DATABRICKS_TOKEN="dapidc4698c8da3bebfacf1e55fbca29b93a-2"
TOKEN_LINE="password ${DATABRICKS_TOKEN}"
echo "Creating a network rc"
echo "machine adb-2136109992264277.17.azuredatabricks.net" > $HOME/.netrc
echo "login token" >> $HOME/.netrc
echo $TOKEN_LINE >> $HOME/.netrc
curl --netrc --request POST ${DATABRICKS_URI} \
--data '{ "comment": "Spark Databricks Token", "lifetime_seconds": 7776000 }' \
| jq . > ./token.json
