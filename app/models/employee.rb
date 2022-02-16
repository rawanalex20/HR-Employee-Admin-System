class Employee < ApplicationRecord
    validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :email, presence: true, format: { with: /\w+@[a-zA-Z0-9]+.com/, message: "not valid email"}
    validates :job, presence: true

    belongs_to :team, optional: true
    belongs_to :division
    has_one :division, foreign_key: "manager_id"
    has_one :team
end
