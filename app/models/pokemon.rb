class Pokemon < ApplicationRecord
    has_many :party_pokemons
    has_many :parties, through: :party_pokemons
    belongs_to :species

    validates :nickname, uniqueness: true

    def self.create_pokemon(pokemon_params)
    
        @species = Species.find(pokemon_params["species_id"].to_i)
        
        species_page = RestClient.get(@species.url)
        species_info = JSON.parse(species_page)
        
        #Types
        species_types = species_info["types"]
        types_array = []
        species_types.each do |slot|
            types_array << slot["type"]["name"]
        end
        if types_array.length == 2
            @pokemon = Pokemon.create(
                nickname: pokemon_params["nickname"].capitalize,
                species_id: pokemon_params["species_id"].to_i,
                type_1: types_array[0].capitalize,
                type_2: types_array[1].capitalize
            )
        else
            @pokemon = Pokemon.create(
                nickname: pokemon_params["nickname"].capitalize,
                species_id: pokemon_params["species_id"].to_i,
                type_1: types_array[0].capitalize,
                type_2: types_array[1]
            )
        end
    end
end
