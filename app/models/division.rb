class Division < ApplicationRecord
    validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    
    has_many :teams
    has_many :employees
end
