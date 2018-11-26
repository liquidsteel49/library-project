class FriendSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :contact_info
end
