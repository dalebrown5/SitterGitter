json.array!(@sitters) do |sitter|

  json.extract! sitter, :id, :name, :phone

end
