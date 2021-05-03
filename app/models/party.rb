class Party < ApplicationRecord
    belongs_to :trainer
    belongs_to :party_pokemon
    
    validates :name, presence: true, uniqueness: true
end
