class User < ApplicationRecord
    has_one_attached :profile

    validates :name, :email, :password, :password_confirmation, presence: true
    validates :name, format: { with: /\A[a-zA-Z_ ]+\z/, message: "only allows letters and spaces" }
    validates :email, format: { with: /\w+@[a-zA-Z0-9]+.com/, message: "not valid email"}
    validates :password, length: { minimum: 4 }
    validates :password, confirmation: true
end
