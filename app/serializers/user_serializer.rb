class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :full_name
end
