class Target < ApplicationRecord
    validates :title, :description, :start_date, :finish_date, presence: true
    validates :finish_date, comparison: { greater_than: :start_date }

    belongs_to :team, class_name: "Team"
end
