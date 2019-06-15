class KanbanStatusesController < ApplicationController
  before_action :set_kanban_status, only: [:show, :update, :destroy]

  # GET /kanban_statuses
  def index
    @kanban_statuses = KanbanStatus.all

    render json: @kanban_statuses
  end

  # GET /kanban_statuses/1
  def show
    render json: @kanban_status
  end

  # POST /kanban_statuses
  def create
    @kanban_status = KanbanStatus.new(kanban_status_params)

    if @kanban_status.save
      render json: @kanban_status, status: :created, location: @kanban_status
    else
      render json: @kanban_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kanban_statuses/1
  def update
    if @kanban_status.update(kanban_status_params)
      render json: @kanban_status
    else
      render json: @kanban_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kanban_statuses/1
  def destroy
    @kanban_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kanban_status
      @kanban_status = KanbanStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kanban_status_params
      params.require(:kanban_status).permit(:kanbanStatusKey, :descricao, :fim, :ordem)
    end
end
