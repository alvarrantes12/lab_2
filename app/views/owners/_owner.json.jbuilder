json.extract! owner, :id, :first_name, :last_name, :email, :personal_number, :created_at, :updated_at
json.url owner_url(owner, format: :json)
