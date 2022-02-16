class Team < ApplicationRecord
    validates :name, presence: true
    validates :team_lead_id, uniqueness: true

    has_many :targets
    has_many :employees
    belongs_to :division
    belongs_to :employee, optional: true, class_name: "Team"
end
