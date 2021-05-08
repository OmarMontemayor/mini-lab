class PartyPokemonsController < ApplicationController
    def new
        @pokemon = PartyPokemon.new
        @party = Party.new
    end
end
