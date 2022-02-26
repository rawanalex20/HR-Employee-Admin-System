class Employee < ApplicationRecord
    validates :name, presence: true, format: { with: /\A[a-zA-Z_ ]+\z/, message: "only allows letters and spaces" }
    validates :email, presence: true, format: { with: /\w+@[a-zA-Z0-9]+.com/, message: "not valid email"}
    validates :job, presence: true

    belongs_to :team, optional: true, class_name: "Team", optional: true
    has_one :division, foreign_key: "manager_id", dependent: :nullify
    has_one :team, foreign_key: "team_lead_id", dependent: :nullify
end
