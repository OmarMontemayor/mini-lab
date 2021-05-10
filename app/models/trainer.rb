class Trainer < ApplicationRecord
    has_many :parties
    has_many :pokemon, through: :parties

    validates :name, presence: true
    validate :validate_age 

    private

    def validate_age
        if age == nil || age > 10
            errors.add(:age, 'You should be over 10 years old. Pokemon trainers get their first pokemon when they turn 10.')
        end
    end
end
