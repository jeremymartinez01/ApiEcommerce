class MetodoPagosController < ApplicationController
  before_action :set_metodo_pago, only: %i[ show update destroy ]

  # GET /metodo_pagos
  def index
    @metodo_pagos = MetodoPago.all

    render json: @metodo_pagos
  end

  # GET /metodo_pagos/1
  def show
    render json: @metodo_pago
  end

  # POST /metodo_pagos
  def create
    @metodo_pago = MetodoPago.new(metodo_pago_params)

    if @metodo_pago.save
      render json: @metodo_pago, status: :created, location: @metodo_pago
    else
      render json: @metodo_pago.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /metodo_pagos/1
  def update
    if @metodo_pago.update(metodo_pago_params)
      render json: @metodo_pago
    else
      render json: @metodo_pago.errors, status: :unprocessable_entity
    end
  end

  # DELETE /metodo_pagos/1
  def destroy
    @metodo_pago.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metodo_pago
      @metodo_pago = MetodoPago.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def metodo_pago_params
      params.require(:metodo_pago).permit(:mpid, :metodo)
    end
end
