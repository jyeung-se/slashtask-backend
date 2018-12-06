class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :city, :state

  has_many :task_lists, include_nested_associations: true
end
