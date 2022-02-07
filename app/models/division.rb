class Division < ApplicationRecord
    validates :name, presence: true
    
    has_many :teams
    has_many :employees
end
