require 'test_helper'

class DadosControllerTest < ActionController::TestCase
  setup do
    @dado = dados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dado" do
    assert_difference('Dado.count') do
      post :create, dado: { cpf: @dado.cpf, email: @dado.email, nome: @dado.nome, pagamento: @dado.pagamento, sexo: @dado.sexo, sobrenome: @dado.sobrenome }
    end

    assert_redirected_to dado_path(assigns(:dado))
  end

  test "should show dado" do
    get :show, id: @dado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dado
    assert_response :success
  end

  test "should update dado" do
    patch :update, id: @dado, dado: { cpf: @dado.cpf, email: @dado.email, nome: @dado.nome, pagamento: @dado.pagamento, sexo: @dado.sexo, sobrenome: @dado.sobrenome }
    assert_redirected_to dado_path(assigns(:dado))
  end

  test "should destroy dado" do
    assert_difference('Dado.count', -1) do
      delete :destroy, id: @dado
    end

    assert_redirected_to dados_path
  end
end
