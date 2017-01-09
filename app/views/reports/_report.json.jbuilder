json.extract! report, :id, :data, :clima_id, :tarefas, :ocorrencias, :obra_id, :created_at, :updated_at
json.url report_url(report, format: :json)