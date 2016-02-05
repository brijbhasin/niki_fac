require 'test_helper'

class ProjectActivitiesControllerTest < ActionController::TestCase
  setup do
    @project_activity = project_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_activity" do
    assert_difference('ProjectActivity.count') do
      post :create, project_activity: { deliver_date: @project_activity.deliver_date, details: @project_activity.details, name: @project_activity.name, project_id: @project_activity.project_id, start_date: @project_activity.start_date }
    end

    assert_redirected_to project_activity_path(assigns(:project_activity))
  end

  test "should show project_activity" do
    get :show, id: @project_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_activity
    assert_response :success
  end

  test "should update project_activity" do
    patch :update, id: @project_activity, project_activity: { deliver_date: @project_activity.deliver_date, details: @project_activity.details, name: @project_activity.name, project_id: @project_activity.project_id, start_date: @project_activity.start_date }
    assert_redirected_to project_activity_path(assigns(:project_activity))
  end

  test "should destroy project_activity" do
    assert_difference('ProjectActivity.count', -1) do
      delete :destroy, id: @project_activity
    end

    assert_redirected_to project_activities_path
  end
end
