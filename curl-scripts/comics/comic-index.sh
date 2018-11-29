#!/bin/bash

curl --include --request GET 'http://localhost:4741/comics' \
--header "Authorization: Token token=${TOKEN}" \
