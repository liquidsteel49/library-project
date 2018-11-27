class MyComicSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user_id
  has_one :comic_id
end
