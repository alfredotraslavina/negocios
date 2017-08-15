class InvensController < ApplicationController
  before_action :set_inven, only: [:show, :edit, :update, :destroy]

  # GET /invens
  # GET /invens.json
  def index
    @invens = Inven.all
     
  end

  # GET /invens/1
  # GET /invens/1.json
  def show
  end

  # GET /invens/new
  def new
    @inven = Inven.new
  end

  # GET /invens/1/edit
  def edit
  end

  # POST /invens
  # POST /invens.json
  def create
    @inven = Inven.new(inven_params)

    respond_to do |format|
      if @inven.save
        format.html { redirect_to @inven, notice: 'Inven was successfully created.' }
        format.json { render :show, status: :created, location: @inven }
      else
        format.html { render :new }
        format.json { render json: @inven.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invens/1
  # PATCH/PUT /invens/1.json
  def update
    respond_to do |format|
      if @inven.update(inven_params)
        format.html { redirect_to @inven, notice: 'Inven was successfully updated.' }
        format.json { render :show, status: :ok, location: @inven }
      else
        format.html { render :edit }
        format.json { render json: @inven.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invens/1
  # DELETE /invens/1.json
  def destroy
    @inven.destroy
    respond_to do |format|
      format.html { redirect_to invens_url, notice: 'Inven was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def reporte
    @invens = Inven.all
    @objetosGuardadosPrecio = @invens.sort_by(&:precio)
    @objetosGuardadosCantidad = @invens.sort_by(&:cantidad)
    @objetosGuardadosPeso = @invens.sort_by(&:peso)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inven
      @inven = Inven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inven_params
      params.require(:inven).permit(:nombre_objeto, :marca, :modelo, :precio, :cantidad, :peso)
    end
end

