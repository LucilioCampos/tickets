require 'test_helper'

class TipoDeTicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_ticket = tipo_de_tickets(:one)
  end

  test "should get index" do
    get tipo_de_tickets_url, as: :json
    assert_response :success
  end

  test "should create tipo_de_ticket" do
    assert_difference('TipoDeTicket.count') do
      post tipo_de_tickets_url, params: { tipo_de_ticket: { cor: @tipo_de_ticket.cor, descricao: @tipo_de_ticket.descricao, tipoDeTicketKey: @tipo_de_ticket.tipoDeTicketKey } }, as: :json
    end

    assert_response 201
  end

  test "should show tipo_de_ticket" do
    get tipo_de_ticket_url(@tipo_de_ticket), as: :json
    assert_response :success
  end

  test "should update tipo_de_ticket" do
    patch tipo_de_ticket_url(@tipo_de_ticket), params: { tipo_de_ticket: { cor: @tipo_de_ticket.cor, descricao: @tipo_de_ticket.descricao, tipoDeTicketKey: @tipo_de_ticket.tipoDeTicketKey } }, as: :json
    assert_response 200
  end

  test "should destroy tipo_de_ticket" do
    assert_difference('TipoDeTicket.count', -1) do
      delete tipo_de_ticket_url(@tipo_de_ticket), as: :json
    end

    assert_response 204
  end
end
