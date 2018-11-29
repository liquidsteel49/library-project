#!/bin/bash

curl --include --request PATCH "http://localhost:4741/comics/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "comic": {
    "title": "'"${TITLE}"'",
    "writer": "'"${WRITER}"'",
    "illustrator": "'"${ILLUSTRATOR}"'",
    "is_series": "'"${SERIES}"'",
    "issue_number": "'"${ISSUE}"'",
    "series_total_issue": "'"${TOTAL}"'",
    "ongoing": "'"${ONGOING}"'",
    "genre": "'"${GENRE}"'",
    "synopsis": "'"${SYNOPSIS}"'"
  }
}'
