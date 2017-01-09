json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :name, :phone, :rg, :cpf, :adress, :ctps, :in_date, :out_date, :function, :obra_id
  json.url funcionario_url(funcionario, format: :json)
end
