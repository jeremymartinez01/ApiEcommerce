class DomiciliosController < ApplicationController
  before_action :set_domicilio, only: %i[ show update destroy ]

  # GET /domicilios
  def index
    @domicilios = Domicilio.all

    render json: @domicilios
  end

  # GET /domicilios/1
  def show
    render json: @domicilio
  end

  # POST /domicilios
  def create
    @domicilio = Domicilio.new(domicilio_params)

    if @domicilio.save
      render json: @domicilio, status: :created, location: @domicilio
    else
      render json: @domicilio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /domicilios/1
  def update
    if @domicilio.update(domicilio_params)
      render json: @domicilio
    else
      render json: @domicilio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /domicilios/1
  def destroy
    @domicilio.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_domicilio
      @domicilio = Domicilio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def domicilio_params
      params.require(:domicilio).permit(:did, :usuario_id, :ciudad, :sector, :calle_principal, :calle_secundaria, :villa, :cod_postal)
    end
end
