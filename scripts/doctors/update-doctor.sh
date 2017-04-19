curl --include --request PATCH http://localhost:4741/doctors/$ID \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "given_name": "Judge",
      "family_name": "Judy"
    }
  }'
