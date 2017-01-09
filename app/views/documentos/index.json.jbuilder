json.array!(@documentos) do |documento|
  json.extract! documento, :id, :title, :description
  json.url documento_url(documento, format: :json)
end
