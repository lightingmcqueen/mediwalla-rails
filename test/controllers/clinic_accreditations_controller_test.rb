require 'test_helper'

class ClinicAccreditationsControllerTest < ActionController::TestCase
  setup do
    @clinic_accreditation = clinic_accreditations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_accreditations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_accreditation" do
    assert_difference('ClinicAccreditation.count') do
      post :create, clinic_accreditation: { accreditation_id: @clinic_accreditation.accreditation_id, clinic_id: @clinic_accreditation.clinic_id }
    end

    assert_redirected_to clinic_accreditation_path(assigns(:clinic_accreditation))
  end

  test "should show clinic_accreditation" do
    get :show, id: @clinic_accreditation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_accreditation
    assert_response :success
  end

  test "should update clinic_accreditation" do
    patch :update, id: @clinic_accreditation, clinic_accreditation: { accreditation_id: @clinic_accreditation.accreditation_id, clinic_id: @clinic_accreditation.clinic_id }
    assert_redirected_to clinic_accreditation_path(assigns(:clinic_accreditation))
  end

  test "should destroy clinic_accreditation" do
    assert_difference('ClinicAccreditation.count', -1) do
      delete :destroy, id: @clinic_accreditation
    end

    assert_redirected_to clinic_accreditations_path
  end
end
