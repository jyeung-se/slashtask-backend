class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :first_name, :last_name, :city, :state, :password

  has_many :task_lists, include_nested_associations: true
end
