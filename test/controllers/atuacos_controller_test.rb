require 'test_helper'

class AtuacosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atuacao = atuacos(:one)
  end

  test "should get index" do
    get atuacos_url, as: :json
    assert_response :success
  end

  test "should create @atuacao" do
    assert_difference('Atuacao.count') do
      post atuacos_url, params: {atuacao: {ativo: @atuacao.ativo, atuacaoKey: @atuacao.atuacaoKey, usuario_id: @atuacao.usuario_id } }, as: :json
    end

    assert_response 201
  end

  test "should show @atuacao" do
    get atuaco_url(@atuacao), as: :json
    assert_response :success
  end

  test "should update @atuacao" do
    patch atuaco_url(@atuacao), params: {atuacao: {ativo: @atuacao.ativo, atuacaoKey: @atuacao.atuacaoKey, usuario_id: @atuacao.usuario_id } }, as: :json
    assert_response 200
  end

  test "should destroy @atuacao" do
    assert_difference('Atuacao.count', -1) do
      delete atuaco_url(@atuacao), as: :json
    end

    assert_response 204
  end
end
