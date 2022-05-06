json.array! @pets do |pet|
  
  json.id pet.id
  json.name pet.name
  json.race pet.race
  json.owner_id pet.owner_id

end
