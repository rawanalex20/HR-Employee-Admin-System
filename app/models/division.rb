class Division < ApplicationRecord
    validates :name, presence: true
    validates :manager_id, uniqueness: true
    
    has_many :teams, dependent: :destroy
    has_many :employees
    belongs_to :employee, optional: true, class_name: "Division"#, foreign_key: "manager_id"
end
