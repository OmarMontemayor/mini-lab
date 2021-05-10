class Species < ApplicationRecord
    has_many :pokemons
    
    def self.get_data
        species_list = RestClient.get 'https://pokeapi.co/api/v2/pokemon?&limit=151'
        species_array = JSON.parse(species_list)["results"]
        species_array.each do |species|
            species_page = RestClient.get(species["url"])
            species_info = JSON.parse(species_page)
            #Default name and URL
            species = self.create(name: species["name"], url: species["url"])
        end
    end
end
