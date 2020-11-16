json.extract! pet, :id, :name, :breed, :birthdate, :created_at, :updated_at
json.url pet_url(pet, format: :json)
