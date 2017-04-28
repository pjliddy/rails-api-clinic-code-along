API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "first_name": "'"${FNAME}"'",
      "last_name": "'"${LNAME}"'"
    }
  }'

echo
