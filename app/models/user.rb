class User < ApplicationRecord
  validates :username, {presence: true, uniqueness: true}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true
  validates :state, presence: true

  has_many :task_lists
end
