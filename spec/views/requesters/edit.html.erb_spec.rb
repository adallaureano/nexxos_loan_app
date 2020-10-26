require 'rails_helper'

RSpec.describe "requesters/edit", type: :view do
  before(:each) do
    @requester = assign(:requester, Requester.create!(
      company_name: "MyString",
      cnpj: 1,
      address: "MyString",
      phone: "MyString"
    ))
  end

  it "renders the edit requester form" do
    render

    assert_select "form[action=?][method=?]", requester_path(@requester), "post" do

      assert_select "input[name=?]", "requester[company_name]"

      assert_select "input[name=?]", "requester[cnpj]"

      assert_select "input[name=?]", "requester[address]"

      assert_select "input[name=?]", "requester[phone]"
    end
  end
end
