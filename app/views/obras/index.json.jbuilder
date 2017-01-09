json.array!(@obras) do |obra|
  json.extract! obra, :id, :name, :locale, :start_date, :description
  json.url obra_url(obra, format: :json)
end
