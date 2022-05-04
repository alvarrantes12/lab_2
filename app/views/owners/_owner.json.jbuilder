json.extract! owner, :id, :nombre, :apellido, :correo_electronico, :identificacion, :created_at, :updated_at
json.url owner_url(owner, format: :json)
