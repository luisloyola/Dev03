json.array!(@reunions) do |reunion|
  json.extract! reunion, :id, :fecha, :horainicio, :horafin, :lugar
  json.url reunion_url(reunion, format: :json)
end
