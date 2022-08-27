#!/usr/bin/env bash

export REACT_APP_GRAPHQL_URL="https://hasura.$namespace.summary.dev/v1/graphql" && \
export REACT_APP_GRAPHQL_SUBSCRIPTION_URL="wss://hasura.$namespace.summary.dev/v1/graphql" && \
export REACT_APP_SQL_URL="https://hasura.$namespace.summary.dev/sql"
export PUBLIC_URL="https://$namespace.summary.dev/console"

env | grep REACT_APP
echo PUBLIC_URL=$PUBLIC_URL
echo namespace=$namespace
echo sha_short=$sha_short

npm run build