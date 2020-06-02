require 'test_helper'

class DadosClientesControllerTest < ActionController::TestCase
  setup do
    @dados_cliente = dados_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dados_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dados_cliente" do
    assert_difference('DadosCliente.count') do
      post :create, dados_cliente: { Forma: @dados_cliente.Forma, Primeiro: @dados_cliente.Primeiro, Sobrenome: @dados_cliente.Sobrenome, cpf: @dados_cliente.cpf, de: @dados_cliente.de, email: @dados_cliente.email, int: @dados_cliente.int, nome: @dados_cliente.nome, pagamento: @dados_cliente.pagamento, sexo: @dados_cliente.sexo }
    end

    assert_redirected_to dados_cliente_path(assigns(:dados_cliente))
  end

  test "should show dados_cliente" do
    get :show, id: @dados_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dados_cliente
    assert_response :success
  end

  test "should update dados_cliente" do
    patch :update, id: @dados_cliente, dados_cliente: { Forma: @dados_cliente.Forma, Primeiro: @dados_cliente.Primeiro, Sobrenome: @dados_cliente.Sobrenome, cpf: @dados_cliente.cpf, de: @dados_cliente.de, email: @dados_cliente.email, int: @dados_cliente.int, nome: @dados_cliente.nome, pagamento: @dados_cliente.pagamento, sexo: @dados_cliente.sexo }
    assert_redirected_to dados_cliente_path(assigns(:dados_cliente))
  end

  test "should destroy dados_cliente" do
    assert_difference('DadosCliente.count', -1) do
      delete :destroy, id: @dados_cliente
    end

    assert_redirected_to dados_clientes_path
  end
end
