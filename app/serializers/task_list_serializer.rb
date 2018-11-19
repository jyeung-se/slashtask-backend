class TaskListSerializer < ActiveModel::Serializer
  attributes :id, :list_title

  has_many :tasks, include_nested_associations: true
  belongs_to :user
end
