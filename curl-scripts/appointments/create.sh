#!/bin/bash

curl "http://localhost:4741/appointments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "appointment": {
      "patient_id": "'"${PATIENT_ID}"'",
      "doctor_id": "'"${DOCTOR_ID}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
