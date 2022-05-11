class BreedService
    def save_breed
        response= HTTParty.get('https://api.thedogapi.com/v1/breeds')
        breed_list= response[(0..171).to_a.sample]
        Breed.create(
            name: breed_list['name'],
            life_span: breed_list['life_span'],
            bred_for: breed_list['bred_for'],
            image_url: breed_list['image']['url']
        )

    end
end