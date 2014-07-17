require 'test_helper'

class NewhomesControllerTest < ActionController::TestCase
  setup do
    @newhome = newhomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newhomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newhome" do
    assert_difference('Newhome.count') do
      post :create, newhome: { address: @newhome.address, bathroom: @newhome.bathroom, bedroom: @newhome.bedroom, frontimg: @newhome.frontimg, garage: @newhome.garage, homedes: @newhome.homedes, lot: @newhome.lot, name: @newhome.name, note1: @newhome.note1, note2: @newhome.note2, note3: @newhome.note3, price: @newhome.price, project_id: @newhome.project_id, size: @newhome.size, status: @newhome.status, structimg: @newhome.structimg }
    end

    assert_redirected_to newhome_path(assigns(:newhome))
  end

  test "should show newhome" do
    get :show, id: @newhome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newhome
    assert_response :success
  end

  test "should update newhome" do
    patch :update, id: @newhome, newhome: { address: @newhome.address, bathroom: @newhome.bathroom, bedroom: @newhome.bedroom, frontimg: @newhome.frontimg, garage: @newhome.garage, homedes: @newhome.homedes, lot: @newhome.lot, name: @newhome.name, note1: @newhome.note1, note2: @newhome.note2, note3: @newhome.note3, price: @newhome.price, project_id: @newhome.project_id, size: @newhome.size, status: @newhome.status, structimg: @newhome.structimg }
    assert_redirected_to newhome_path(assigns(:newhome))
  end

  test "should destroy newhome" do
    assert_difference('Newhome.count', -1) do
      delete :destroy, id: @newhome
    end

    assert_redirected_to newhomes_path
  end
end
