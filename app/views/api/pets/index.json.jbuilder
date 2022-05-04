json.array! @pets do |pet|
	json.id pet.id
	json.nombre pet.nombre
	json.raza pet.raza
	json.pedigree pet.pedigree
end
