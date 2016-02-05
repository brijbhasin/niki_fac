json.array!(@project_activities) do |project_activity|
  json.extract! project_activity, :id, :name, :start_date, :deliver_date, :project_id, :details
  json.url project_activity_url(project_activity, format: :json)
end
