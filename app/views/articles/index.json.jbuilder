json.array!(@articles) do |article|
  json.extract! article, :id, :title, :id, :contents
  json.url article_url(article, format: :json)
end
