json.extract! owner, :id, :name, :last_name, :email, :identification, :created_at, :updated_at
json.url owner_url(owner, format: :json)
