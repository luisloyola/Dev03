json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :nombre
  json.url sprint_url(sprint, format: :json)
end
