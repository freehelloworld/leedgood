require 'test_helper'

class HomelandsControllerTest < ActionController::TestCase
  setup do
    @homeland = homelands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homelands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homeland" do
    assert_difference('Homeland.count') do
      post :create, homeland: { address: @homeland.address, bathroom: @homeland.bathroom, bedroom: @homeland.bedroom, frontimg: @homeland.frontimg, garage: @homeland.garage, lot: @homeland.lot, name: @homeland.name, note1: @homeland.note1, note2: @homeland.note2, note3: @homeland.note3, packagedes: @homeland.packagedes, price: @homeland.price, size: @homeland.size, status: @homeland.status, structimg: @homeland.structimg }
    end

    assert_redirected_to homeland_path(assigns(:homeland))
  end

  test "should show homeland" do
    get :show, id: @homeland
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homeland
    assert_response :success
  end

  test "should update homeland" do
    patch :update, id: @homeland, homeland: { address: @homeland.address, bathroom: @homeland.bathroom, bedroom: @homeland.bedroom, frontimg: @homeland.frontimg, garage: @homeland.garage, lot: @homeland.lot, name: @homeland.name, note1: @homeland.note1, note2: @homeland.note2, note3: @homeland.note3, packagedes: @homeland.packagedes, price: @homeland.price, size: @homeland.size, status: @homeland.status, structimg: @homeland.structimg }
    assert_redirected_to homeland_path(assigns(:homeland))
  end

  test "should destroy homeland" do
    assert_difference('Homeland.count', -1) do
      delete :destroy, id: @homeland
    end

    assert_redirected_to homelands_path
  end
end
