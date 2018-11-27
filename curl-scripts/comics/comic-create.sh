#!/bin/bash

curl --include --request POST "http://localhost:4741/comics" \
--header "Content-Type: application/json" \
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
