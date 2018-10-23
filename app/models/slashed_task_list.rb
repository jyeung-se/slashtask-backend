class SlashedTaskList < ApplicationRecord
  belongs_to :user
  belongs_to :slashed_task
end
