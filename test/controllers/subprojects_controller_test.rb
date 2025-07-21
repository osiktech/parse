require "test_helper"

class SubprojectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subproject = subprojects(:one)
  end

  test "should get index" do
    get subprojects_url
    assert_response :success
  end

  test "should get new" do
    get new_subproject_url
    assert_response :success
  end

  test "should create subproject" do
    assert_difference("Subproject.count") do
      post subprojects_url, params: { subproject: { builder_id: @subproject.builder_id, client_id: @subproject.client_id, owner_id: @subproject.owner_id, project_id: @subproject.project_id, subproject_name: @subproject.subproject_name } }
    end

    assert_redirected_to subproject_url(Subproject.last)
  end

  test "should show subproject" do
    get subproject_url(@subproject)
    assert_response :success
  end

  test "should get edit" do
    get edit_subproject_url(@subproject)
    assert_response :success
  end

  test "should update subproject" do
    patch subproject_url(@subproject), params: { subproject: { builder_id: @subproject.builder_id, client_id: @subproject.client_id, owner_id: @subproject.owner_id, project_id: @subproject.project_id, subproject_name: @subproject.subproject_name } }
    assert_redirected_to subproject_url(@subproject)
  end

  test "should destroy subproject" do
    assert_difference("Subproject.count", -1) do
      delete subproject_url(@subproject)
    end

    assert_redirected_to subprojects_url
  end
end
