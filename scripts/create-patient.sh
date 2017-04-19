curl --include --request POST http://localhost:4741/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Example Title",
      "born_on": "03-02-1983",
      "diagnosis": "Example diagnosis"
    }
  }'
