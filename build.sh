#!/usr/bin/env bash

export REACT_APP_GRAPHQL_URL="https://hasura.$namespace.summary.dev/v1/graphql"
export REACT_APP_GRAPHQL_SUBSCRIPTION_URL="wss://hasura.$namespace.summary.dev/v1/graphql"
export REACT_APP_SQL_URL="https://api.$namespace.summary.dev/sql"
export PUBLIC_URL="https://$namespace.summary.dev/console"

export REACT_APP_DEFAULT_GRAPHQL_QUERY="{ event(limit: 10) { name } }"
export REACT_APP_DEFAULT_SQL_QUERY="select * from event limit 10"
export REACT_APP_GRAPHQL_WELCOME="Welcome to StarkNet Indexer $namespace $sha_short"

env | grep 'REACT_APP\|PUBLIC_URL\|namespace\|sha_short'

npm run build