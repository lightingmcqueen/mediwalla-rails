require 'test_helper'

class AccreditationsControllerTest < ActionController::TestCase
  setup do
    @accreditation = accreditations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accreditations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accreditation" do
    assert_difference('Accreditation.count') do
      post :create, accreditation: { name: @accreditation.name }
    end

    assert_redirected_to accreditation_path(assigns(:accreditation))
  end

  test "should show accreditation" do
    get :show, id: @accreditation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accreditation
    assert_response :success
  end

  test "should update accreditation" do
    patch :update, id: @accreditation, accreditation: { name: @accreditation.name }
    assert_redirected_to accreditation_path(assigns(:accreditation))
  end

  test "should destroy accreditation" do
    assert_difference('Accreditation.count', -1) do
      delete :destroy, id: @accreditation
    end

    assert_redirected_to accreditations_path
  end
end
