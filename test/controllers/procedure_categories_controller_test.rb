require 'test_helper'

class ProcedureCategoriesControllerTest < ActionController::TestCase
  setup do
    @procedure_category = procedure_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procedure_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procedure_category" do
    assert_difference('ProcedureCategory.count') do
      post :create, procedure_category: { description: @procedure_category.description, name: @procedure_category.name }
    end

    assert_redirected_to procedure_category_path(assigns(:procedure_category))
  end

  test "should show procedure_category" do
    get :show, id: @procedure_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procedure_category
    assert_response :success
  end

  test "should update procedure_category" do
    patch :update, id: @procedure_category, procedure_category: { description: @procedure_category.description, name: @procedure_category.name }
    assert_redirected_to procedure_category_path(assigns(:procedure_category))
  end

  test "should destroy procedure_category" do
    assert_difference('ProcedureCategory.count', -1) do
      delete :destroy, id: @procedure_category
    end

    assert_redirected_to procedure_categories_path
  end
end
