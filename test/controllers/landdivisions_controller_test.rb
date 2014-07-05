require 'test_helper'

class LanddivisionsControllerTest < ActionController::TestCase
  setup do
    @landdivision = landdivisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landdivisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landdivision" do
    assert_difference('Landdivision.count') do
      post :create, landdivision: { address: @landdivision.address, frontage: @landdivision.frontage, lot: @landdivision.lot, price: @landdivision.price, project_id: @landdivision.project_id, size: @landdivision.size, status: @landdivision.status }
    end

    assert_redirected_to landdivision_path(assigns(:landdivision))
  end

  test "should show landdivision" do
    get :show, id: @landdivision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landdivision
    assert_response :success
  end

  test "should update landdivision" do
    patch :update, id: @landdivision, landdivision: { address: @landdivision.address, frontage: @landdivision.frontage, lot: @landdivision.lot, price: @landdivision.price, project_id: @landdivision.project_id, size: @landdivision.size, status: @landdivision.status }
    assert_redirected_to landdivision_path(assigns(:landdivision))
  end

  test "should destroy landdivision" do
    assert_difference('Landdivision.count', -1) do
      delete :destroy, id: @landdivision
    end

    assert_redirected_to landdivisions_path
  end
end
