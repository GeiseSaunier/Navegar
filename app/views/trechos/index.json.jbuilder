json.array!(@trechos) do |trecho|
  json.extract! trecho, :id, :origem, :destino, :data_ida, :horario_ida, :data_volta, :horario_volta
  json.url trecho_url(trecho, format: :json)
end
