class Team < ApplicationRecord
    validates :name, presence: true

    has_many :targets, dependent: :nullify
    has_many :employees, dependent: :nullify
    belongs_to :division, class_name: "Division"
    belongs_to :employee, optional: true, class_name: "Team"
end
