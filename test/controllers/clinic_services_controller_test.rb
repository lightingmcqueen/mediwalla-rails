require 'test_helper'

class ClinicServicesControllerTest < ActionController::TestCase
  setup do
    @clinic_service = clinic_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_service" do
    assert_difference('ClinicService.count') do
      post :create, clinic_service: { clinic_id: @clinic_service.clinic_id, service_id: @clinic_service.service_id }
    end

    assert_redirected_to clinic_service_path(assigns(:clinic_service))
  end

  test "should show clinic_service" do
    get :show, id: @clinic_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_service
    assert_response :success
  end

  test "should update clinic_service" do
    patch :update, id: @clinic_service, clinic_service: { clinic_id: @clinic_service.clinic_id, service_id: @clinic_service.service_id }
    assert_redirected_to clinic_service_path(assigns(:clinic_service))
  end

  test "should destroy clinic_service" do
    assert_difference('ClinicService.count', -1) do
      delete :destroy, id: @clinic_service
    end

    assert_redirected_to clinic_services_path
  end
end
