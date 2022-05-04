json.array! @pets, partial: "pets/pet", as: :pet

json.array! @pets do |pet|
    json.name pet.name
    json.breed pet.breed
    json.pedigree pet.pedigree
end