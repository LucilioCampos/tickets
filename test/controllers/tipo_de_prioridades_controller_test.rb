require 'test_helper'

class TipoDePrioridadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_prioridade = tipo_de_prioridades(:one)
  end

  test "should get index" do
    get tipo_de_prioridades_url, as: :json
    assert_response :success
  end

  test "should create tipo_de_prioridade" do
    assert_difference('TipoDePrioridade.count') do
      post tipo_de_prioridades_url, params: { tipo_de_prioridade: { cor: @tipo_de_prioridade.cor, descricao: @tipo_de_prioridade.descricao, peso: @tipo_de_prioridade.peso, tipoDePrioridadeKey: @tipo_de_prioridade.tipoDePrioridadeKey } }, as: :json
    end

    assert_response 201
  end

  test "should show tipo_de_prioridade" do
    get tipo_de_prioridade_url(@tipo_de_prioridade), as: :json
    assert_response :success
  end

  test "should update tipo_de_prioridade" do
    patch tipo_de_prioridade_url(@tipo_de_prioridade), params: { tipo_de_prioridade: { cor: @tipo_de_prioridade.cor, descricao: @tipo_de_prioridade.descricao, peso: @tipo_de_prioridade.peso, tipoDePrioridadeKey: @tipo_de_prioridade.tipoDePrioridadeKey } }, as: :json
    assert_response 200
  end

  test "should destroy tipo_de_prioridade" do
    assert_difference('TipoDePrioridade.count', -1) do
      delete tipo_de_prioridade_url(@tipo_de_prioridade), as: :json
    end

    assert_response 204
  end
end
