#!/bin/bash

curl "http://localhost:4741/meals/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "meal": {
      "amount": "'"${AMOUNT}"'",
      "UNIT": "'"${UNIT}"'",
      "recipe_id": "'"${RECIPE}"'",
      "ingredient_id": "'"${INGREDIENT}"'"
    }
  }'

echo
