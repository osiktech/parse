json.extract! client, :id, :company_name, :firstname, :lastname, :streetname, :zipcode, :city, :country, :email, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
