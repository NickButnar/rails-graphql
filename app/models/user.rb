class User < ApplicationRecord
  has_secure_password

  has_many :posts, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
