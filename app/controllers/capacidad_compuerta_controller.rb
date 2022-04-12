class CapacidadCompuertaController < ApplicationController
  before_action :set_capacidad_compuertum, only: %i[ show edit update destroy ]

  # GET /capacidad_compuerta or /capacidad_compuerta.json
  def index
    @capacidad_compuerta = CapacidadCompuertum.all
  end

  # GET /capacidad_compuerta/1 or /capacidad_compuerta/1.json
  def show
  end

  # GET /capacidad_compuerta/new
  def new
    @capacidad_compuertum = CapacidadCompuertum.new
  end

  # GET /capacidad_compuerta/1/edit
  def edit
  end

  # POST /capacidad_compuerta or /capacidad_compuerta.json
  def create
    @capacidad_compuertum = CapacidadCompuertum.new(capacidad_compuertum_params)

    respond_to do |format|
      if @capacidad_compuertum.save
        format.html { redirect_to capacidad_compuertum_url(@capacidad_compuertum), notice: "Capacidad compuertum was successfully created." }
        format.json { render :show, status: :created, location: @capacidad_compuertum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @capacidad_compuertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capacidad_compuerta/1 or /capacidad_compuerta/1.json
  def update
    respond_to do |format|
      if @capacidad_compuertum.update(capacidad_compuertum_params)
        format.html { redirect_to capacidad_compuertum_url(@capacidad_compuertum), notice: "Capacidad compuertum was successfully updated." }
        format.json { render :show, status: :ok, location: @capacidad_compuertum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @capacidad_compuertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capacidad_compuerta/1 or /capacidad_compuerta/1.json
  def destroy
    @capacidad_compuertum.destroy

    respond_to do |format|
      format.html { redirect_to capacidad_compuerta_url, notice: "Capacidad compuertum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capacidad_compuertum
      @capacidad_compuertum = CapacidadCompuertum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capacidad_compuertum_params
      params.require(:capacidad_compuertum).permit(:carga, :ancho, :valor)
    end
end
