json.array!(@cidades) do |cidade|
  json.extract! cidade, :id, :nome, :estado
  json.url cidade_url(cidade, format: :json)
end
