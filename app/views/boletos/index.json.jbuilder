json.array!(@boletos) do |boleto|
  json.extract! boleto, :id, :preco, :vencimento, :descricao, :parcelas, :situacao
  json.url boleto_url(boleto, format: :json)
end
