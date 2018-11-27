class ComicSerializer < ActiveModel::Serializer
  attributes :id, :title, :writer, :illustrator, :is_series, :issue_number, :series_total_issue, :ongoing, :genre, :synopsis
end
