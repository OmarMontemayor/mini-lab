class Pokemon < ApplicationRecord
    has_many :parties
    has_many :trainers, through: :parties
    
    def self.get_data
        pokemon_list = RestClient.get 'https://pokeapi.co/api/v2/pokemon?&limit=151'
        pokemon_array = JSON.parse(pokemon_list)["results"]
        pokemon_array.each do |pokemon|
            pokemon_page = RestClient.get(pokemon["url"])
            pokemon_info = JSON.parse(pokemon_page)
            pokemon = self.create(name: pokemon["name"], url: pokemon["url"])
        end
        self.all.each do |pokemon|
            pokemon_page = RestClient.get(pokemon.url)
            pokemon_info = JSON.parse(pokemon_page)
            pokemon.update(species: pokemon_info["species"]["name"])
        end
    end
end
