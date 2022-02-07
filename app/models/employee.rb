class Employee < ApplicationRecord
    belongs_to :team, optional: true
    belongs_to :division
    has_one :team
end
