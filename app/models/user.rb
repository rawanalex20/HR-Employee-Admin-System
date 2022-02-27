class User < ApplicationRecord
    has_one_attached :profile

    validates :email, format: { with: /\w+@[a-zA-Z0-9]+.com/, message: "not valid email"}
end
