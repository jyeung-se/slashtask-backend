class SlashedTask < ApplicationRecord
  has_many :slashed_task_lists
  has_many :users, through: :slashed_task_lists
end
