curl --include --request PATCH http://localhost:4741/appointments/1 \
  --header "Content-Type: application/json" \
  --data '{
    "appointment": {
      "doctor_id": "2",
      "patient_id": "1"
    }
  }'
