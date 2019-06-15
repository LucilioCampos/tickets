class TipoDeTicketsController < ApplicationController
  before_action :set_tipo_de_ticket, only: [:show, :update, :destroy]

  # GET /tipo_de_tickets
  def index
    @tipo_de_tickets = TipoDeTicket.all

    render json: @tipo_de_tickets
  end

  # GET /tipo_de_tickets/1
  def show
    render json: @tipo_de_ticket
  end

  # POST /tipo_de_tickets
  def create
    @tipo_de_ticket = TipoDeTicket.new(tipo_de_ticket_params)

    if @tipo_de_ticket.save
      render json: @tipo_de_ticket, status: :created, location: @tipo_de_ticket
    else
      render json: @tipo_de_ticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_de_tickets/1
  def update
    if @tipo_de_ticket.update(tipo_de_ticket_params)
      render json: @tipo_de_ticket
    else
      render json: @tipo_de_ticket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_de_tickets/1
  def destroy
    @tipo_de_ticket.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_ticket
      @tipo_de_ticket = TipoDeTicket.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipo_de_ticket_params
      params.require(:tipo_de_ticket).permit(:tipoDeTicketKey, :descricao, :cor)
    end
end
