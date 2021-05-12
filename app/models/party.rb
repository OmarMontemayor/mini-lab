class Party < ApplicationRecord
    belongs_to :trainer
    belongs_to :pokemon
    
    validates :name, presence: true
end
