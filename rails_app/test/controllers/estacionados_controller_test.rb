require 'test_helper'

class EstacionadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estacionado = estacionados(:one)
  end

  test "should get index" do
    get estacionados_url
    assert_response :success
  end

  test "should get new" do
    get new_estacionado_url
    assert_response :success
  end

  test "should create estacionado" do
    assert_difference('Estacionado.count') do
      post estacionados_url, params: { estacionado: { entrada: @estacionado.entrada, placa: @estacionado.placa, saida: @estacionado.saida, tipo_veiculo: @estacionado.tipo_veiculo, valor: @estacionado.valor } }
    end

    assert_redirected_to estacionado_url(Estacionado.last)
  end

  test "should show estacionado" do
    get estacionado_url(@estacionado)
    assert_response :success
  end

  test "should get edit" do
    get edit_estacionado_url(@estacionado)
    assert_response :success
  end

  test "should update estacionado" do
    patch estacionado_url(@estacionado), params: { estacionado: { entrada: @estacionado.entrada, placa: @estacionado.placa, saida: @estacionado.saida, tipo_veiculo: @estacionado.tipo_veiculo, valor: @estacionado.valor } }
    assert_redirected_to estacionado_url(@estacionado)
  end

  test "should destroy estacionado" do
    assert_difference('Estacionado.count', -1) do
      delete estacionado_url(@estacionado)
    end

    assert_redirected_to estacionados_url
  end
end
