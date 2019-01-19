class Task < ApplicationRecord
  validates :title, {presence: true, uniqueness: true}
  validates :description, presence: true

  belongs_to :task_list
end
