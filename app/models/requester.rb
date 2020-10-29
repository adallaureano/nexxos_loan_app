class Requester < ApplicationRecord
    has_many :credit_requests

    validates_presence_of :company_name, :cnpj, :address, :phone
    #validates :cnpj, :cnpj => true
    #validates_format_of :phone, with: /^\(11\) 9\d{4}-\d{4}|\((?:1[2-9]|[2-9]\d)\) [5-9]\d{3}-\d{4}$/

end
