class Requester < ApplicationRecord
    has_many :credit_requests
    validates_presence_of :company_name, :cnpj, :address, :phone
    #validates :cnpj, :cnpj => true
end
