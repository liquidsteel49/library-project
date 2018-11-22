class BorrowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :book_id
end
