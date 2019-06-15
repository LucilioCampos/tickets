require 'test_helper'

class DataLimitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_limite = data_limites(:one)
  end

  test "should get index" do
    get data_limites_url, as: :json
    assert_response :success
  end

  test "should create data_limite" do
    assert_difference('DataLimite.count') do
      post data_limites_url, params: { data_limite: { cor: @data_limite.cor, descricao: @data_limite.descricao, formatedd: @data_limite.formatedd, string,: @data_limite.string,, timestamp: @data_limite.timestamp } }, as: :json
    end

    assert_response 201
  end

  test "should show data_limite" do
    get data_limite_url(@data_limite), as: :json
    assert_response :success
  end

  test "should update data_limite" do
    patch data_limite_url(@data_limite), params: { data_limite: { cor: @data_limite.cor, descricao: @data_limite.descricao, formatedd: @data_limite.formatedd, string,: @data_limite.string,, timestamp: @data_limite.timestamp } }, as: :json
    assert_response 200
  end

  test "should destroy data_limite" do
    assert_difference('DataLimite.count', -1) do
      delete data_limite_url(@data_limite), as: :json
    end

    assert_response 204
  end
end
