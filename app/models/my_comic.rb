class MyComic < ApplicationRecord
  belongs_to :user_id
  belongs_to :comic_id
end
