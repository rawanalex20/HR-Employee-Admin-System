class Division < ApplicationRecord
    validates :name, presence: true
    
    has_many :teams, dependent: :destroy
    belongs_to :employee, optional: true, class_name: "Division"

    accepts_nested_attributes_for :teams
end
