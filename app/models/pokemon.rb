class Pokemon < ApplicationRecord
    
    def self.get_data
        pokemon_list = RestClient.get 'https://pokeapi.co/api/v2/pokemon?&limit=151'
        pokemon_array = JSON.parse(pokemon_list)["results"]
        pokemon_array.each do |pokemon|
            pokemon_page = RestClient.get(pokemon["url"])
            pokemon_info = JSON.parse(pokemon_page)
            #Default name and URL
            pokemon = self.create(name: pokemon["name"], url: pokemon["url"])
        end
        self.all.each do |pokemon|
            pokemon_page = RestClient.get(pokemon.url)
            pokemon_info = JSON.parse(pokemon_page)
            #Species
            pokemon.update(species: pokemon_info["species"]["name"])
            #Types
            pokemon_types = pokemon_info["types"]
            types_array = []
            pokemon_types.each do |slot|
                types_array << slot["type"]["name"]
            end
            pokemon.update(type_1: types_array[0])
            pokemon.update(type_2: types_array[1] || "none")
        end
    end
end
