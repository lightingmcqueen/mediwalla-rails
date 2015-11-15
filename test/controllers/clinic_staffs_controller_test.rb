require 'test_helper'

class ClinicStaffsControllerTest < ActionController::TestCase
  setup do
    @clinic_staff = clinic_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_staff" do
    assert_difference('ClinicStaff.count') do
      post :create, clinic_staff: { clinic_id: @clinic_staff.clinic_id, description: @clinic_staff.description, name: @clinic_staff.name, speciality: @clinic_staff.speciality }
    end

    assert_redirected_to clinic_staff_path(assigns(:clinic_staff))
  end

  test "should show clinic_staff" do
    get :show, id: @clinic_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_staff
    assert_response :success
  end

  test "should update clinic_staff" do
    patch :update, id: @clinic_staff, clinic_staff: { clinic_id: @clinic_staff.clinic_id, description: @clinic_staff.description, name: @clinic_staff.name, speciality: @clinic_staff.speciality }
    assert_redirected_to clinic_staff_path(assigns(:clinic_staff))
  end

  test "should destroy clinic_staff" do
    assert_difference('ClinicStaff.count', -1) do
      delete :destroy, id: @clinic_staff
    end

    assert_redirected_to clinic_staffs_path
  end
end
