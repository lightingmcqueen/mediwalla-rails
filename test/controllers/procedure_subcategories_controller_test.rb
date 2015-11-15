require 'test_helper'

class ProcedureSubcategoriesControllerTest < ActionController::TestCase
  setup do
    @procedure_subcategory = procedure_subcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procedure_subcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procedure_subcategory" do
    assert_difference('ProcedureSubcategory.count') do
      post :create, procedure_subcategory: { description: @procedure_subcategory.description, name: @procedure_subcategory.name, procedure_category_id: @procedure_subcategory.procedure_category_id }
    end

    assert_redirected_to procedure_subcategory_path(assigns(:procedure_subcategory))
  end

  test "should show procedure_subcategory" do
    get :show, id: @procedure_subcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procedure_subcategory
    assert_response :success
  end

  test "should update procedure_subcategory" do
    patch :update, id: @procedure_subcategory, procedure_subcategory: { description: @procedure_subcategory.description, name: @procedure_subcategory.name, procedure_category_id: @procedure_subcategory.procedure_category_id }
    assert_redirected_to procedure_subcategory_path(assigns(:procedure_subcategory))
  end

  test "should destroy procedure_subcategory" do
    assert_difference('ProcedureSubcategory.count', -1) do
      delete :destroy, id: @procedure_subcategory
    end

    assert_redirected_to procedure_subcategories_path
  end
end
