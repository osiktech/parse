require "application_system_test_case"

class SubprojectsTest < ApplicationSystemTestCase
  setup do
    @subproject = subprojects(:one)
  end

  test "visiting the index" do
    visit subprojects_url
    assert_selector "h1", text: "Subprojects"
  end

  test "should create subproject" do
    visit subprojects_url
    click_on "New subproject"

    fill_in "Builder", with: @subproject.builder_id
    fill_in "Client", with: @subproject.client_id
    fill_in "Owner", with: @subproject.owner_id
    fill_in "Project", with: @subproject.project_id
    fill_in "Subproject name", with: @subproject.subproject_name
    click_on "Create Subproject"

    assert_text "Subproject was successfully created"
    click_on "Back"
  end

  test "should update Subproject" do
    visit subproject_url(@subproject)
    click_on "Edit this subproject", match: :first

    fill_in "Builder", with: @subproject.builder_id
    fill_in "Client", with: @subproject.client_id
    fill_in "Owner", with: @subproject.owner_id
    fill_in "Project", with: @subproject.project_id
    fill_in "Subproject name", with: @subproject.subproject_name
    click_on "Update Subproject"

    assert_text "Subproject was successfully updated"
    click_on "Back"
  end

  test "should destroy Subproject" do
    visit subproject_url(@subproject)
    click_on "Destroy this subproject", match: :first

    assert_text "Subproject was successfully destroyed"
  end
end
