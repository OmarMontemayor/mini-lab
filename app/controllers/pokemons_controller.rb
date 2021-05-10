class PokemonsController < ApplicationController
    def new
        @pokemon = Pokemon.new
    end

    def create
        if Pokemon.create_pokemon(pokemon_params)
            redirect_to pokemons_path
        else
            render new
        end
    end

    def index
        @pokemons = Pokemon.all
    end

    private

    def pokemon_params
        params.require(:pokemon).permit(:nickname, :species_id)
    end
end
