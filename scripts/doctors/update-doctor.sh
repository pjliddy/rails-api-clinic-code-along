curl --include --request PATCH http://localhost:4741/doctors/3 \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "specialty": "pediatry",
      "given_name": "Dr",
      "family_name": "Phil",
      "gender": "male"
    }
  }'
