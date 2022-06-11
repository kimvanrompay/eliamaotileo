json.extract! contact, :id, :bedrijfsnaam, :contactnaam, :email, :tel, :onderwerp, :created_at, :updated_at
json.url contact_url(contact, format: :json)
