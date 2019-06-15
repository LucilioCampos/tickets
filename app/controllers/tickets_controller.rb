class TicketsController < ApplicationController

  def index
    tickets = Ticket.order('created_at DESC')
    render json: {status: 'SUCCESS', message: 'Artigos carregados', data: tickets},status: :ok
  end

  # Listar artigo passando ID
  def show
    ticket = Ticket.find(params[:id])
    render json: {status: 'SUCCESS', message:'Loaded article', data:ticket}, status: :ok
  end

  # Criar um novo artigo
  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      render json: { status: 'SUCCESS', message: 'Saved article', data: @ticket }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Articles not saved' }, status: :unprocessable_entity
    end
  end

  # Excluir artigo
  def destroy
    ticket = Ticket.find(params[:id])
    ticket.destroy
    render json: {status: 'SUCCESS', message:'Deleted article', data: ticket}, status: :ok
  end

  # Atualizar um artigo
  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update(ticket_params)
      render json: { status: 'SUCCESS', message: 'Updated article', data: @ticket }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Articles not update' }, status: :unprocessable_entity
    end
  end

  # Parametros aceitos
  private

  def ticket_params
    params.require(:ticket).permit( :ticketKey, :quantidadeDeVinculados, :titulo,
                                    :categoria_id, :tipoDeTicket_id, :kanbanStatus,
                                    :tipoDePrioridade, :especieDeTicket, :alvoDeSpam,
                                    :valorDeNegocio, :integer, :esforco, :projeto,
                                    :responsavel, :atuacao, :dataLimite, :url)
  end

end
