class User < ApplicationRecord
    before_save self.email = email.downcase

    validates :first_name, :last_name, presence: true, length: {maximum: 10}

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates(:email, presence: true, format: { with: VALID_EMAIL_REGEX }, length: {maximum: 255}, uniqueness: { case_sensitive: false })
end
