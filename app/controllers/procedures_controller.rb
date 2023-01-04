class ProceduresController < ApplicationController
  before_action :set_procedure, only: %i[ show update destroy ]

  # GET /procedures
  def index
    @procedures = Procedure.all

    render json: @procedures
  end

  # GET /procedures/1
  def show
    render json: @procedure
  end

  # POST /procedures
  def create
    @procedure = Procedure.new(procedure_params)

    if @procedure.save
      render json: @procedure, status: :created, location: @procedure
    else
      render json: @procedure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /procedures/1
  def update
    if @procedure.update(procedure_params)
      render json: @procedure
    else
      render json: @procedure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /procedures/1
  def destroy
    @procedure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedure
      @procedure = Procedure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def procedure_params
      params.require(:procedure).permit(:review_interval, :active, :review_id)
    end
end
