require 'rails_helper'

RSpec.describe "requesters/index", type: :view do
  before(:each) do
    assign(:requesters, [
      Requester.create!(
        company_name: "Company Name",
        cnpj: 2,
        address: "Address",
        phone: "Phone"
      ),
      Requester.create!(
        company_name: "Company Name",
        cnpj: 2,
        address: "Address",
        phone: "Phone"
      )
    ])
  end

  it "renders a list of requesters" do
    render
    assert_select "tr>td", text: "Company Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
  end
end
