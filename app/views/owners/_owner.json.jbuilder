json.extract! owner, :id, :name, :last_name, :email, :personal_id, :created_at, :updated_at
json.url owner_url(owner, format: :json)
