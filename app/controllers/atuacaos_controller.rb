class AtuacaosController < ApplicationController
  before_action :set_atuaco, only: [:show, :update, :destroy]

  # GET /@atuacaos
  def index
    @atuacaos = Atuacao.all

    render json: @atuacaos
  end

  # GET /@atuacaos/1
  def show
    render json: @atuacao
  end

  # POST /@atuacaos
  def create
    @atuacao = Atuacao.new(atuaco_params)

    if @atuacao.save
      render json: @atuacao, status: :created, location: @atuacao
    else
      render json: @atuacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /@atuacaos/1
  def update
    if @atuacao.update(atuaco_params)
      render json: @atuacao
    else
      render json: @atuacao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /@atuacaos/1
  def destroy
    @atuacao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atuaco
      @atuacao = Atuacao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def atuaco_params
      params.require(:atuacao).permit(:atuacaoKey, :ativo, :usuario_id)
    end
end
