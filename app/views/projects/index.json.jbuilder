json.array!(@projects) do |project|
  json.extract! project, :id, :user_id, :name
  json.url project_url(project, format: :json)
end
