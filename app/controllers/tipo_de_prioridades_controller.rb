class TipoDePrioridadesController < ApplicationController
  before_action :set_tipo_de_prioridade, only: [:show, :update, :destroy]

  # GET /tipo_de_prioridades
  def index
    @tipo_de_prioridades = TipoDePrioridade.all

    render json: @tipo_de_prioridades
  end

  # GET /tipo_de_prioridades/1
  def show
    render json: @tipo_de_prioridade
  end

  # POST /tipo_de_prioridades
  def create
    @tipo_de_prioridade = TipoDePrioridade.new(tipo_de_prioridade_params)

    if @tipo_de_prioridade.save
      render json: @tipo_de_prioridade, status: :created, location: @tipo_de_prioridade
    else
      render json: @tipo_de_prioridade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_de_prioridades/1
  def update
    if @tipo_de_prioridade.update(tipo_de_prioridade_params)
      render json: @tipo_de_prioridade
    else
      render json: @tipo_de_prioridade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_de_prioridades/1
  def destroy
    @tipo_de_prioridade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_prioridade
      @tipo_de_prioridade = TipoDePrioridade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipo_de_prioridade_params
      params.require(:tipo_de_prioridade).permit(:tipoDePrioridadeKey, :descricao, :cor, :peso)
    end
end
