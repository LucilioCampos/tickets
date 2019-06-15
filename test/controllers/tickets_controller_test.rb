require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url, as: :json
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { alvoDeSpam: @ticket.alvoDeSpam, atuacoes_id: @ticket.atuacoes_id, categoriaKey_id: @ticket.categoriaKey_id, dataLimite: @ticket.dataLimite, esforco: @ticket.esforco, especieDeTicketKey: @ticket.especieDeTicketKey, integer: @ticket.integer, kanbanStatusKey_id: @ticket.kanbanStatusKey_id, projeto_id: @ticket.projeto_id, quantidadeDeVinculado: @ticket.quantidadeDeVinculado, references: @ticket.references, responsavel_id: @ticket.responsavel_id, ticketKey: @ticket.ticketKey, tipoDePrioridadeKey_id: @ticket.tipoDePrioridadeKey_id, tipoDeTicketKey_id: @ticket.tipoDeTicketKey_id, titulo: @ticket.titulo, url: @ticket.url, user_id: @ticket.user_id, valorDeNegocio: @ticket.valorDeNegocio } }, as: :json
    end

    assert_response 201
  end

  test "should show ticket" do
    get ticket_url(@ticket), as: :json
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { alvoDeSpam: @ticket.alvoDeSpam, atuacoes_id: @ticket.atuacoes_id, categoriaKey_id: @ticket.categoriaKey_id, dataLimite: @ticket.dataLimite, esforco: @ticket.esforco, especieDeTicketKey: @ticket.especieDeTicketKey, integer: @ticket.integer, kanbanStatusKey_id: @ticket.kanbanStatusKey_id, projeto_id: @ticket.projeto_id, quantidadeDeVinculado: @ticket.quantidadeDeVinculado, references: @ticket.references, responsavel_id: @ticket.responsavel_id, ticketKey: @ticket.ticketKey, tipoDePrioridadeKey_id: @ticket.tipoDePrioridadeKey_id, tipoDeTicketKey_id: @ticket.tipoDeTicketKey_id, titulo: @ticket.titulo, url: @ticket.url, user_id: @ticket.user_id, valorDeNegocio: @ticket.valorDeNegocio } }, as: :json
    assert_response 200
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket), as: :json
    end

    assert_response 204
  end
end
