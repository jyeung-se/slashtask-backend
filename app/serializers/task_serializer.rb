class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task_title, :task_description, :date_posted, :date_completed
end
