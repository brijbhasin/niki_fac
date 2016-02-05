json.array!(@projects) do |project|
  json.extract! project, :id, :name, :start_date, :deliver_date, :details, :customer_id, :last_stage_date
  json.url project_url(project, format: :json)
end
