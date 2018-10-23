class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :created_at, :updated_at, :date_completed
end
