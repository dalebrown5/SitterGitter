json.array!(@sitters) do |sitter|
  json.extract! sitter, :id, :name, :phone, :references
  json.url sitter_url(sitter, format: :json)
end
