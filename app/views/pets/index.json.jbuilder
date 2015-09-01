json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :published, :birth_date, :gender
  json.url pet_url(pet, format: :json)
end
