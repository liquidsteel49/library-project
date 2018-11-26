class LentComic < ApplicationRecord
  belongs_to :comic
  belongs_to :friend
end
