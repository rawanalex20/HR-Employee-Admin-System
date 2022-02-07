class Team < ApplicationRecord
    has_many :targets
    has_many :employees
    belongs_to :division
    belongs_to :employee, optional: true
end
