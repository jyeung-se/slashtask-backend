class TaskList < ApplicationRecord
  validates :list_title, {presence: true, uniqueness: true}

  belongs_to :user
  has_many :tasks
end
