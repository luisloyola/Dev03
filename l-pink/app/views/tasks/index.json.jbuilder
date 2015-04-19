json.array!(@tasks) do |task|
  json.extract! task, :id, :tema, :tipo, :discusion, :accion, :owner, :fechatermino, :estado, :baseline
  json.url task_url(task, format: :json)
end
