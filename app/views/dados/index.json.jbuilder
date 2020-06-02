json.array!(@dados) do |dado|
  json.extract! dado, :id, :nome, :sobrenome, :cpf, :sexo, :email, :pagamento
  json.url dado_url(dado, format: :json)
end
