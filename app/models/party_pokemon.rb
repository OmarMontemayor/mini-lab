class PartyPokemon < ApplicationRecord
    has_many :parties
    has_many :trainers, through: :parties

    accepts_nested_attributes_for :parties
end
