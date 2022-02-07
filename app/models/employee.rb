class Employee < ApplicationRecord
    validates :name, presence: true#, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

    belongs_to :team, optional: true
    belongs_to :division
    has_one :team
end
