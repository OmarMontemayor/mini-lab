class PartyPokemon < ApplicationRecord
    belongs_to :pokemon
    belongs_to :party
end
