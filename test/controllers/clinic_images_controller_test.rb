require 'test_helper'

class ClinicImagesControllerTest < ActionController::TestCase
  setup do
    @clinic_image = clinic_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_image" do
    assert_difference('ClinicImage.count') do
      post :create, clinic_image: {  }
    end

    assert_redirected_to clinic_image_path(assigns(:clinic_image))
  end

  test "should show clinic_image" do
    get :show, id: @clinic_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_image
    assert_response :success
  end

  test "should update clinic_image" do
    patch :update, id: @clinic_image, clinic_image: {  }
    assert_redirected_to clinic_image_path(assigns(:clinic_image))
  end

  test "should destroy clinic_image" do
    assert_difference('ClinicImage.count', -1) do
      delete :destroy, id: @clinic_image
    end

    assert_redirected_to clinic_images_path
  end
end
