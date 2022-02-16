class Target < ApplicationRecord
    validates :title, :description, :start_date, :finish_date, presence: true

    belongs_to :team, class_name: "Team"
end
