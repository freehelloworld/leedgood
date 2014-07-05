require 'test_helper'

class ProjecttypesControllerTest < ActionController::TestCase
  setup do
    @projecttype = projecttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projecttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projecttype" do
    assert_difference('Projecttype.count') do
      post :create, projecttype: { description: @projecttype.description, image: @projecttype.image, name: @projecttype.name, note1: @projecttype.note1, note2: @projecttype.note2 }
    end

    assert_redirected_to projecttype_path(assigns(:projecttype))
  end

  test "should show projecttype" do
    get :show, id: @projecttype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projecttype
    assert_response :success
  end

  test "should update projecttype" do
    patch :update, id: @projecttype, projecttype: { description: @projecttype.description, image: @projecttype.image, name: @projecttype.name, note1: @projecttype.note1, note2: @projecttype.note2 }
    assert_redirected_to projecttype_path(assigns(:projecttype))
  end

  test "should destroy projecttype" do
    assert_difference('Projecttype.count', -1) do
      delete :destroy, id: @projecttype
    end

    assert_redirected_to projecttypes_path
  end
end
