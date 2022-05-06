json.extract! owner, :id, :first_name, :last_name, :mail, :personal_id :created_at, :updated_at
json.url owner_url(owner, format: :json)
