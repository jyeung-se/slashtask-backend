class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :date_completed
end
