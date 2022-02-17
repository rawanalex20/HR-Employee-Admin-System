class Division < ApplicationRecord
    validates :name, presence: true
    
    has_many :teams, dependent: :destroy
    has_many :employees, dependent: :nullify
    belongs_to :employee, optional: true, class_name: "Division"
end
