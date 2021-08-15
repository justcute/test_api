class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :ip_adress
  belongs_to :user
 
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :login
  end
end
