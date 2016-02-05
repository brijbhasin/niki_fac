json.array!(@org_roles) do |org_role|
  json.extract! org_role, :id, :name, :manager, :user_id
  json.url org_role_url(org_role, format: :json)
end
