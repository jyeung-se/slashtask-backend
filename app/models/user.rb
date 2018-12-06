class User < ApplicationRecord
  has_secure_password
  validates :username, {presence: true, uniqueness: true}
  validates :password_digest, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true
  validates :state, presence: true

  has_many :task_lists
end
