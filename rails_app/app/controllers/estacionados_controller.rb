class EstacionadosController < ApplicationController
  before_action :set_estacionado, only: [:show, :edit, :update, :destroy]

  # GET /estacionados
  # GET /estacionados.json
  def index
    @estacionados = Estacionado.all
  end

  # GET /estacionados/1
  # GET /estacionados/1.json
  def show
  end

  # GET /estacionados/new
  def new
    @estacionado = Estacionado.new
  end

  # GET /estacionados/1/edit
  def edit
  end

  # POST /estacionados
  # POST /estacionados.json
  def create
    @estacionado = Estacionado.new(estacionado_params)

    respond_to do |format|
      if @estacionado.save
        format.html { redirect_to @estacionado, notice: 'Estacionado was successfully created.' }
        format.json { render :show, status: :created, location: @estacionado }
      else
        format.html { render :new }
        format.json { render json: @estacionado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estacionados/1
  # PATCH/PUT /estacionados/1.json
  def update
    respond_to do |format|
      if @estacionado.update(estacionado_params)
        format.html { redirect_to @estacionado, notice: 'Estacionado was successfully updated.' }
        format.json { render :show, status: :ok, location: @estacionado }
      else
        format.html { render :edit }
        format.json { render json: @estacionado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estacionados/1
  # DELETE /estacionados/1.json
  def destroy
    @estacionado.destroy
    respond_to do |format|
      format.html { redirect_to estacionados_url, notice: 'Estacionado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estacionado
      @estacionado = Estacionado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estacionado_params
      params.require(:estacionado).permit(:tipo_veiculo, :placa, :entrada, :saida, :valor)
    end
end
