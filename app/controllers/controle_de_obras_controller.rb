class ControleDeObrasController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_controle_de_obra, only: [:show, :edit, :update, :destroy]

  # GET /controle_de_obras
  # GET /controle_de_obras.json
  def index
    @controle_de_obras = ControleDeObra.all
    @controle_de_obra = ControleDeObra.new
  end

  # GET /controle_de_obras/1
  # GET /controle_de_obras/1.json
  def show
  end

  # GET /controle_de_obras/new
  def new
    @controle_de_obra = ControleDeObra.new
  end

  # GET /controle_de_obras/1/edit
  def edit
  end

  # POST /controle_de_obras
  # POST /controle_de_obras.json
  def create
    @controle_de_obra = ControleDeObra.new(controle_de_obra_params)

    respond_to do |format|
      if @controle_de_obra.save
        format.html { redirect_to @controle_de_obra, notice: 'Controle de obra was successfully created.' }
        format.json { render :show, status: :created, location: @controle_de_obra }
      else
        format.html { render :new }
        format.json { render json: @controle_de_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controle_de_obras/1
  # PATCH/PUT /controle_de_obras/1.json
  def update
    respond_to do |format|
      if @controle_de_obra.update(controle_de_obra_params)
        format.html { redirect_to @controle_de_obra, notice: 'Controle de obra was successfully updated.' }
        format.json { render :show, status: :ok, location: @controle_de_obra }
      else
        format.html { render :edit }
        format.json { render json: @controle_de_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controle_de_obras/1
  # DELETE /controle_de_obras/1.json
  def destroy
    @controle_de_obra.destroy
    respond_to do |format|
      format.html { redirect_to controle_de_obras_url, notice: 'Controle de obra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_controle_de_obra
      @controle_de_obra = ControleDeObra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def controle_de_obra_params
      params.require(:controle_de_obra).permit(:data, :nf, :fornecedor, :recebido, :pago, :obra_id)
    end
end
