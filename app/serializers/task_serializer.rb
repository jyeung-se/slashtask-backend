class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :slashed, :task_list_id, :date_posted, :created_at, :updated_at, :date_completed

  belongs_to :task_list
end
