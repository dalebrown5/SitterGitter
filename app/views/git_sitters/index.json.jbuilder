json.array!(@git_sitters) do |git_sitter|
  json.extract! git_sitter, :id, :when, :how_long, :message
  json.url git_sitter_url(git_sitter, format: :json)
end
