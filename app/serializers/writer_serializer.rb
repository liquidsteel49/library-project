class WriterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :pen_name, :known_for
end
