class PartyPokemon < ApplicationRecord
    has_many :parties
    has_many :trainers, through: :parties
end
