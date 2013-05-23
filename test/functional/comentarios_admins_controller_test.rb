require 'test_helper'

class ComentariosAdminsControllerTest < ActionController::TestCase
  setup do
    @comentarios_admin = comentarios_admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comentarios_admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comentarios_admin" do
    assert_difference('ComentariosAdmin.count') do
      post :create, comentarios_admin: { comentario: @comentarios_admin.comentario, nombre: @comentarios_admin.nombre, titulo: @comentarios_admin.titulo }
    end

    assert_redirected_to comentarios_admin_path(assigns(:comentarios_admin))
  end

  test "should show comentarios_admin" do
    get :show, id: @comentarios_admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comentarios_admin
    assert_response :success
  end

  test "should update comentarios_admin" do
    put :update, id: @comentarios_admin, comentarios_admin: { comentario: @comentarios_admin.comentario, nombre: @comentarios_admin.nombre, titulo: @comentarios_admin.titulo }
    assert_redirected_to comentarios_admin_path(assigns(:comentarios_admin))
  end

  test "should destroy comentarios_admin" do
    assert_difference('ComentariosAdmin.count', -1) do
      delete :destroy, id: @comentarios_admin
    end

    assert_redirected_to comentarios_admins_path
  end
end
