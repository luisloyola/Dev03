json.array!(@users) do |user|
  json.extract! user, :id, :rol, :nombre, :apellido
  json.url user_url(user, format: :json)
end
