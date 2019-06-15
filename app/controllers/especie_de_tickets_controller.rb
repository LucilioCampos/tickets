class EspecieDeTicketsController < ApplicationController
  before_action :set_especie_de_ticket, only: [:show, :update, :destroy]

  # GET /especie_de_tickets
  def index
    @especie_de_tickets = EspecieDeTicket.all

    render json: @especie_de_tickets
  end

  # GET /especie_de_tickets/1
  def show
    render json: @especie_de_ticket
  end

  # POST /especie_de_tickets
  def create
    @especie_de_ticket = EspecieDeTicket.new(especie_de_ticket_params)

    if @especie_de_ticket.save
      render json: @especie_de_ticket, status: :created, location: @especie_de_ticket
    else
      render json: @especie_de_ticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /especie_de_tickets/1
  def update
    if @especie_de_ticket.update(especie_de_ticket_params)
      render json: @especie_de_ticket
    else
      render json: @especie_de_ticket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /especie_de_tickets/1
  def destroy
    @especie_de_ticket.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especie_de_ticket
      @especie_de_ticket = EspecieDeTicket.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def especie_de_ticket_params
      params.require(:especie_de_ticket).permit(:especieDeTicketKey, :descricao, :slug)
    end
end
