class User < ApplicationRecord
  has_many :task_lists
  has_many :tasks, through: :task_lists
end
