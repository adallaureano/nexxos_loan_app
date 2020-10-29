class CreditRequest < ApplicationRecord
  belongs_to :requester
  before_save :interest_rate

  private 
  def interest_rate
    #rate = 0.15
    #months = 12
    #pmt = 1
    #PMT = valor_presente X ((((1 + taxa) ^ numero_de_periodos) X taxa) / (((1 + taxa) ^ numero_de_periodos) - 1))
    #100000 * ((((1.015) ** 12) * 0.015) / (((1.015) ** 12) - 1)) = 9167.999290622945
    self.total_value =  self.value * ((((1 + 0.15) ** 12) * 0.15) / (((1 + 0.15) ** 12) - 1)) 
    self.monthly_value = (self.total_value / 12)
  end
end
