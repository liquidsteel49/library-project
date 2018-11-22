# frozen_string_literal: true

class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable

# allows user to edit a resource
  def editable
    scope == object.user
  end
end
