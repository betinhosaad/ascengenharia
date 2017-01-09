json.array!(@controle_de_obras) do |controle_de_obra|
  json.extract! controle_de_obra, :id, :data, :nf, :fornecedor, :recebido, :pago, :obra_id
  json.url controle_de_obra_url(controle_de_obra, format: :json)
end
