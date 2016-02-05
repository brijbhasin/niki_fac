require 'test_helper'

class OrgRolesControllerTest < ActionController::TestCase
  setup do
    @org_role = org_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:org_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create org_role" do
    assert_difference('OrgRole.count') do
      post :create, org_role: { manager: @org_role.manager, name: @org_role.name, user_id: @org_role.user_id }
    end

    assert_redirected_to org_role_path(assigns(:org_role))
  end

  test "should show org_role" do
    get :show, id: @org_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @org_role
    assert_response :success
  end

  test "should update org_role" do
    patch :update, id: @org_role, org_role: { manager: @org_role.manager, name: @org_role.name, user_id: @org_role.user_id }
    assert_redirected_to org_role_path(assigns(:org_role))
  end

  test "should destroy org_role" do
    assert_difference('OrgRole.count', -1) do
      delete :destroy, id: @org_role
    end

    assert_redirected_to org_roles_path
  end
end
