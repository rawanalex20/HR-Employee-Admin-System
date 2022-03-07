class User < ApplicationRecord
    has_one_attached :profile

    validates :name, format: { with: /\A[a-zA-Z_ ]+\z/, message: "only allows letters and spaces" }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
