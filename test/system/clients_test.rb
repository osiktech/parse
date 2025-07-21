require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "should create client" do
    visit clients_url
    click_on "New client"

    fill_in "City", with: @client.city
    fill_in "Company name", with: @client.company_name
    fill_in "Country", with: @client.country
    fill_in "Email", with: @client.email
    fill_in "Firstname", with: @client.firstname
    fill_in "Lastname", with: @client.lastname
    fill_in "Phone", with: @client.phone
    fill_in "Streetname", with: @client.streetname
    fill_in "Zipcode", with: @client.zipcode
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "should update Client" do
    visit client_url(@client)
    click_on "Edit this client", match: :first

    fill_in "City", with: @client.city
    fill_in "Company name", with: @client.company_name
    fill_in "Country", with: @client.country
    fill_in "Email", with: @client.email
    fill_in "Firstname", with: @client.firstname
    fill_in "Lastname", with: @client.lastname
    fill_in "Phone", with: @client.phone
    fill_in "Streetname", with: @client.streetname
    fill_in "Zipcode", with: @client.zipcode
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "should destroy Client" do
    visit client_url(@client)
    click_on "Destroy this client", match: :first

    assert_text "Client was successfully destroyed"
  end
end
