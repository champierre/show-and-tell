json.array!(@projects) do |project|
  json.extract! project, :id, :youtube_url, :scratch_url
  json.url project_url(project, format: :json)
end
