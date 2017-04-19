curl --include --request PATCH http://localhost:4741/patients/3 \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Ronald McDonald",
      "diagnosis": "Too many burgers"
    }
  }'
