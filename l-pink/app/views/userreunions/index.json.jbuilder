json.array!(@userreunions) do |userreunion|
  json.extract! userreunion, :id, :secreatrio, :presente
  json.url userreunion_url(userreunion, format: :json)
end
