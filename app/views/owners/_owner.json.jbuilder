json.extract! owner, :id, :name, :last_name, :email, :identification_number, :created_at, :updated_at
json.url owner_url(owner, format: :json)
