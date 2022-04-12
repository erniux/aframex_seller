class CotizaCompuertaController < ApplicationController
  before_action :set_cotiza_compuertum, only: %i[ show edit update destroy ]

  # GET /cotiza_compuerta or /cotiza_compuerta.json
  def index
    @cotiza_compuerta = CotizaCompuertum.all
  end

  # GET /cotiza_compuerta/1 or /cotiza_compuerta/1.json
  def show
  end

  # GET /cotiza_compuerta/new
  def new
    @cotiza_compuertum = CotizaCompuertum.new
  end

  # GET /cotiza_compuerta/1/edit
  def edit
  end

  # POST /cotiza_compuerta or /cotiza_compuerta.json
  def create
    @cotiza_compuertum = CotizaCompuertum.new(cotiza_compuertum_params)

    respond_to do |format|
      if @cotiza_compuertum.save
        format.html { redirect_to cotiza_compuertum_url(@cotiza_compuertum), notice: "Cotiza compuertum was successfully created." }
        format.json { render :show, status: :created, location: @cotiza_compuertum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cotiza_compuertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotiza_compuerta/1 or /cotiza_compuerta/1.json
  def update
    respond_to do |format|
      if @cotiza_compuertum.update(cotiza_compuertum_params)
        format.html { redirect_to cotiza_compuertum_url(@cotiza_compuertum), notice: "Cotiza compuertum was successfully updated." }
        format.json { render :show, status: :ok, location: @cotiza_compuertum }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cotiza_compuertum.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /cotiza_compuerta/1 or /cotiza_compuerta/1.json
  def destroy
    @cotiza_compuertum.destroy

    respond_to do |format|
      format.html { redirect_to cotiza_compuerta_url, notice: "Cotiza compuertum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def calcula_paso_agua(alto,carga)
    respond_to do |format|
      format.js { render 'cotiza_compuerta/calcula_paso_agua.js.erb'}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotiza_compuertum
      @cotiza_compuertum = CotizaCompuertum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cotiza_compuertum_params
      params.require(:cotiza_compuertum).permit(:tipo, :cantidad, :instalacion, :uso, :naturaleza_agua, :ancho_vano_hueco, 
                                                :alto_vano_hueco, :altura_piso_operacion, :carga_estatica, 
                                                :op_carga, :sentido_sellado, :perimetro_sellado, 
                                                :instalacion, :mat_tablero_compuerta, :mat_marco, :mat_pedestal, :mat_actuador,
                                                :mat_anclajes, :mat_recubrimientos, :mat_guias, :mat_sellos,
                                                :mat_vastago_roscado,:mat_apoyos, :mecanismo_operacion, :observaciones)
    end
end
