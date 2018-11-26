class LentComicSerializer < ActiveModel::Serializer
  attributes :id
  has_one :comic
  has_one :friend
end
