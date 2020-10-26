json.extract! requester, :id, :company_name, :cnpj, :address, :phone, :created_at, :updated_at
json.url requester_url(requester, format: :json)
