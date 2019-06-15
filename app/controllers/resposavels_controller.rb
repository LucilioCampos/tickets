class ResposavelsController < ApplicationController
  before_action :set_resposavel, only: [:show, :update, :destroy]

  # GET /resposavels
  def index
    @resposavels = Resposavel.all

    render json: @resposavels
  end

  # GET /resposavels/1
  def show
    render json: @resposavel
  end

  # POST /resposavels
  def create
    @resposavel = Resposavel.new(resposavel_params)

    if @resposavel.save
      render json: @resposavel, status: :created, location: @resposavel
    else
      render json: @resposavel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resposavels/1
  def update
    if @resposavel.update(resposavel_params)
      render json: @resposavel
    else
      render json: @resposavel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resposavels/1
  def destroy
    @resposavel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resposavel
      @resposavel = Resposavel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resposavel_params
      params.require(:resposavel).permit(:nome)
    end
end
