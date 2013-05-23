require 'test_helper'

class ComentarioxesControllerTest < ActionController::TestCase
  setup do
    @comentariox = comentarioxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comentarioxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comentariox" do
    assert_difference('Comentariox.count') do
      post :create, comentariox: { comentario: @comentariox.comentario, nombre: @comentariox.nombre, titulo: @comentariox.titulo }
    end

    assert_redirected_to comentariox_path(assigns(:comentariox))
  end

  test "should show comentariox" do
    get :show, id: @comentariox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comentariox
    assert_response :success
  end

  test "should update comentariox" do
    put :update, id: @comentariox, comentariox: { comentario: @comentariox.comentario, nombre: @comentariox.nombre, titulo: @comentariox.titulo }
    assert_redirected_to comentariox_path(assigns(:comentariox))
  end

  test "should destroy comentariox" do
    assert_difference('Comentariox.count', -1) do
      delete :destroy, id: @comentariox
    end

    assert_redirected_to comentarioxes_path
  end
end
