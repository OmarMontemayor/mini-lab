class Party < ApplicationRecord
    belongs_to :trainer
    has_many :party_pokemons
    has_many :pokemons, through: :party_pokemons
    
    validates :name, presence: true


end
