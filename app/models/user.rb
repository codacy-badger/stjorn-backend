# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  before_save { email.downcase! }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 100 }, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 40 }, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :password, presence: true, length: { minimum: 6, maximum: 100 }
end
