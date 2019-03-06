#!/bin/bash

curl "http://localhost:4741/meals" \
  --include \
  --request POST \
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
