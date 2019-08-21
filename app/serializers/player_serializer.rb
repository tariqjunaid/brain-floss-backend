class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :phone, :username, :password_digest, :email, :bio, :avatar, :cover
end
