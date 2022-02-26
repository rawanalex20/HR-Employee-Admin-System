class Team < ApplicationRecord
    validates :name, presence: true

    has_many :targets, dependent: :destroy
    has_many :employees, dependent: :nullify
    belongs_to :division, class_name: "Division", optional: true
    belongs_to :employee, optional: true, class_name: "Team"
end
