# frozen_string_literal: true

# User model specifications
class User < ApplicationRecord
  # formats the email to down case before saving
  attr_accessor :rem_token
  # attr_accessor :token

  before_create :create_remember_token
  before_save { self.email = email.downcase }

  # Allows email validations for correct format
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze

  validates :username, presence: true, length: { minimum: 3, maximum: 50 }
  validates :password, presence: true, length: { minimum: 6, maximum: 255 }
  validates :email, presence: true, length: { minimum: 10, maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  has_many :posts

  def forget_me
    update_attribute(:remember_token, nil)
  end

  def auth(token)
    remember_token == token
  end

  def create_remember_token
    rem_token = Digest::SHA1.hexdigest(SecureRandom.urlsafe_base64)
    self.remember_token = rem_token
  end
end
