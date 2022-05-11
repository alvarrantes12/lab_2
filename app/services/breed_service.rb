class BreedService
    def save_breed
        response= HTTParty.get('https://api.thedogapi.com/v1/breeds')
        Breed.create(name: response[(0..171).to_a.sample]['name'])
        
    end
end