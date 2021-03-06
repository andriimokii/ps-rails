# frozen_string_literal: true

class User < ApplicationRecord
  before_save :username_to_downcase
  before_save :email_to_downcase

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_movies, through: :favorites, source: :movie

  has_secure_password

  validates :name, presence: true
  validates :email, format: { with: /\S+@\S+/ },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 10, allow_blank: true }
  validates :username, presence: true, uniqueness: { case_sensitive: false },
                       format: { with: /\A[A-Z0-9]+\z/i }

  def gravatar_id
    Digest::MD5::hexdigest(email.downcase)
  end

  scope :by_name, -> { order(:name) }
  scope :not_admins, -> { by_name.where(admin: false) }

  def to_param
    username
  end

private

  def username_to_downcase
    self.username = username.downcase
  end

  def email_to_downcase
    self.email = email.downcase
  end
end
