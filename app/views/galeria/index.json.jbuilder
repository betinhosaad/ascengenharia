json.array!(@galeria) do |galerium|
  json.extract! galerium, :id, :name, :description
  json.url galerium_url(galerium, format: :json)
end
