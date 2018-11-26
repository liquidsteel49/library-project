class ComicSerializer < ActiveModel::Serializer
  attributes :id, :user_owns, :lent, :title, :series, :issue, :current, :ongoing
  has_one :writer
  has_one :illustrator
end
