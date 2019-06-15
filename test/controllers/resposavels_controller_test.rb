require 'test_helper'

class ResposavelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resposavel = resposavels(:one)
  end

  test "should get index" do
    get resposavels_url, as: :json
    assert_response :success
  end

  test "should create resposavel" do
    assert_difference('Resposavel.count') do
      post resposavels_url, params: { resposavel: { nome: @resposavel.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show resposavel" do
    get resposavel_url(@resposavel), as: :json
    assert_response :success
  end

  test "should update resposavel" do
    patch resposavel_url(@resposavel), params: { resposavel: { nome: @resposavel.nome } }, as: :json
    assert_response 200
  end

  test "should destroy resposavel" do
    assert_difference('Resposavel.count', -1) do
      delete resposavel_url(@resposavel), as: :json
    end

    assert_response 204
  end
end
