curl --include --request POST http://localhost:4741/doctors \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "specialty": "pediatry",
      "given_name": "Dr",
      "family_name": "Phil",
      "gender": "male"
    }
  }'
