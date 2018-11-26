class Comic < ApplicationRecord
  belongs_to :writer
  belongs_to :illustrator
end
