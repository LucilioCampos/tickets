require 'test_helper'

class EspecieDeTicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @especie_de_ticket = especie_de_tickets(:one)
  end

  test "should get index" do
    get especie_de_tickets_url, as: :json
    assert_response :success
  end

  test "should create especie_de_ticket" do
    assert_difference('EspecieDeTicket.count') do
      post especie_de_tickets_url, params: { especie_de_ticket: { descricao: @especie_de_ticket.descricao, especieDeTicketKey: @especie_de_ticket.especieDeTicketKey, slug: @especie_de_ticket.slug } }, as: :json
    end

    assert_response 201
  end

  test "should show especie_de_ticket" do
    get especie_de_ticket_url(@especie_de_ticket), as: :json
    assert_response :success
  end

  test "should update especie_de_ticket" do
    patch especie_de_ticket_url(@especie_de_ticket), params: { especie_de_ticket: { descricao: @especie_de_ticket.descricao, especieDeTicketKey: @especie_de_ticket.especieDeTicketKey, slug: @especie_de_ticket.slug } }, as: :json
    assert_response 200
  end

  test "should destroy especie_de_ticket" do
    assert_difference('EspecieDeTicket.count', -1) do
      delete especie_de_ticket_url(@especie_de_ticket), as: :json
    end

    assert_response 204
  end
end
