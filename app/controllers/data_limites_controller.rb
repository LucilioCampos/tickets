class DataLimitesController < ApplicationController
  before_action :set_data_limite, only: [:show, :update, :destroy]

  # GET /data_limites
  def index
    @data_limites = DataLimite.all

    render json: @data_limites
  end

  # GET /data_limites/1
  def show
    render json: @data_limite
  end

  # POST /data_limites
  def create
    @data_limite = DataLimite.new(data_limite_params)

    if @data_limite.save
      render json: @data_limite, status: :created, location: @data_limite
    else
      render json: @data_limite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /data_limites/1
  def update
    if @data_limite.update(data_limite_params)
      render json: @data_limite
    else
      render json: @data_limite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /data_limites/1
  def destroy
    @data_limite.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_limite
      @data_limite = DataLimite.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def data_limite_params
      params.require(:data_limite).permit(:timestamp, :formatedd, :string,, :cor, :descricao)
    end
end
