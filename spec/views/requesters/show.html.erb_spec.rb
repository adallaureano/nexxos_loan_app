require 'rails_helper'

RSpec.describe "requesters/show", type: :view do
  before(:each) do
    @requester = assign(:requester, Requester.create!(
      company_name: "Company Name",
      cnpj: 2,
      address: "Address",
      phone: "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
  end
end
