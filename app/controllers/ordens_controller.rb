class OrdensController < ApplicationController
  before_action :set_orden, only: %i[ show update destroy ]

  # GET /ordens
  def index
    @ordens = Orden.all

    render json: @ordens
  end

  # GET /ordens/1
  def show
    render json: @orden
  end

  # POST /ordens
  def create
    @orden = Orden.new(orden_params)

    if @orden.save
      render json: @orden, status: :created, location: @orden
    else
      render json: @orden.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ordens/1
  def update
    if @orden.update(orden_params)
      render json: @orden
    else
      render json: @orden.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ordens/1
  def destroy
    @orden.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden
      @orden = Orden.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orden_params
      params.require(:orden).permit(:oid, :usuario_uid, :mpago_mpid, :domicilio_did, :fecha)
    end
end
