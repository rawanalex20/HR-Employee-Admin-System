class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # validates :name, presence: true
    # validates :name, format: { with: /\A[a-zA-Z_ ]+\z/, message: "only allows letters and spaces" }
    validates :email, format: { with: /\w+@[a-zA-Z0-9]+.com/, message: "not valid email"}
end
