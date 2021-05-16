class PokemonsController < ApplicationController
    def new
        @pokemon = Pokemon.new
        @species = Species.all
    end

    def create
        if Pokemon.create_pokemon(pokemon_params(:nickname, :species_id))
            redirect_to pokemons_path
        else
            render :new
        end
    end

    def index
        @pokemons = Pokemon.all
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
    end

    def update
        @pokemon = Pokemon.find(params[:id])
        if @pokemon.update(pokemon_params(:nickname, party_ids:[]))
            redirect_to pokemon_path(@pokemon)
        else
            render :edit
        end
    end

    def show
        @pokemon = Pokemon.find(params[:id])
    end

    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        redirect_to pokemons_path
    end

    private

    def pokemon_params(*args)
        params.require(:pokemon).permit(*args)
    end
end
