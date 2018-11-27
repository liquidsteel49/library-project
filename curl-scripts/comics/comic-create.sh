#!/bin/bash

curl --include --request POST "http://localhost:4741/comics" \
--header "Content-Type: application/json" \
--data '{
  "comic": {
    "own": "'"${OWN}"'",
    "lent": "'"${LENT}"'",
    "title": "'"${TITLE}"'",
    "writer_id": "'"${WRITER}"'"
    "illustrator_id": "'"${ILLUSTRATOR}"'"
    "series": "'"${SERIES}"'"
    "issue": "'"${ISSUE}"'"
    "current": "'"${CURRENT}"'"
    "ongoing": "'"${ONGING}"'"
  }
}'
