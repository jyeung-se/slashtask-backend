class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :slashed, :task_list_id, :created_at, :updated_at

  belongs_to :task_list
end
