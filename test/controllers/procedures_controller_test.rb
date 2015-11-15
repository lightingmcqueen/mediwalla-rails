require 'test_helper'

class ProceduresControllerTest < ActionController::TestCase
  setup do
    @procedure = procedures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procedures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procedure" do
    assert_difference('Procedure.count') do
      post :create, procedure: { abroad_time: @procedure.abroad_time, clinic_id: @procedure.clinic_id, hospital_time: @procedure.hospital_time, name: @procedure.name, overview: @procedure.overview, price: @procedure.price, procedure_after: @procedure.procedure_after, procedure_before: @procedure.procedure_before, procedure_category_id: @procedure.procedure_category_id, procedure_subcategory_id: @procedure.procedure_subcategory_id }
    end

    assert_redirected_to procedure_path(assigns(:procedure))
  end

  test "should show procedure" do
    get :show, id: @procedure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procedure
    assert_response :success
  end

  test "should update procedure" do
    patch :update, id: @procedure, procedure: { abroad_time: @procedure.abroad_time, clinic_id: @procedure.clinic_id, hospital_time: @procedure.hospital_time, name: @procedure.name, overview: @procedure.overview, price: @procedure.price, procedure_after: @procedure.procedure_after, procedure_before: @procedure.procedure_before, procedure_category_id: @procedure.procedure_category_id, procedure_subcategory_id: @procedure.procedure_subcategory_id }
    assert_redirected_to procedure_path(assigns(:procedure))
  end

  test "should destroy procedure" do
    assert_difference('Procedure.count', -1) do
      delete :destroy, id: @procedure
    end

    assert_redirected_to procedures_path
  end
end
