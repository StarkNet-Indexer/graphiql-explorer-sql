#!/usr/bin/env bash

export REACT_APP_GRAPHQL_URL="https://hasura.$namespace.summary.dev/v1/graphql"
export REACT_APP_GRAPHQL_SUBSCRIPTION_URL="wss://hasura.$namespace.summary.dev/v1/graphql"
export REACT_APP_SQL_URL="https://api.$namespace.summary.dev/sql-query"
export PUBLIC_URL="https://${subdomain}summary.dev/console"

export REACT_APP_DEFAULT_GRAPHQL_QUERY="query latest_blocks {starknet_goerli_block(limit: 1, order_by: {block_number: desc}) {block_number block_hash} starknet_mainnet_block(limit: 1, order_by: {block_number: desc}) {block_number block_hash}}"
export REACT_APP_DEFAULT_SQL_QUERY="select * from starknet_goerli.event left join starknet_goerli.argument on starknet_goerli.argument.event_id = starknet_goerli.event.id order by starknet_goerli.event.id desc limit 10"
export REACT_APP_GRAPHQL_WELCOME="Welcome to Summary $namespace $sha_short"

env | grep 'REACT_APP\|PUBLIC_URL\|namespace\|subdomain\|sha_short'

npm run build