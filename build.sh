#!/usr/bin/env bash

export REACT_APP_GRAPHQL_URL="https://hasura.$namespace.summary.dev/v1/graphql" && \
export REACT_APP_GRAPHQL_SUBSCRIPTION_URL="wss://hasura.$namespace.summary.dev/v1/graphql" && \
export REACT_APP_SQL_URL="https://hasura.$namespace.summary.dev/sql"
export PUBLIC_URL="https://$namespace.summary.dev/console"

# default query for the GraphQL editor
export REACT_APP_DEFAULT_GRAPHQL_QUERY="# $namespace $sha_short \n\n { event(limit: 10) { name } }"
# default query for the SQL editor
export REACT_APP_DEFAULT_SQL_QUERY="select * from event limit 10"

env | grep REACT_APP
echo PUBLIC_URL=$PUBLIC_URL
echo namespace=$namespace
echo sha_short=$sha_short

npm run build