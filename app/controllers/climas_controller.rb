class ClimasController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_clima, only: [:show, :edit, :update, :destroy]

  # GET /climas
  # GET /climas.json
  def index
    @climas = Clima.all
  end

  # GET /climas/1
  # GET /climas/1.json
  def show
  end

  # GET /climas/new
  def new
    @clima = Clima.new
  end

  # GET /climas/1/edit
  def edit
  end

  # POST /climas
  # POST /climas.json
  def create
    @clima = Clima.new(clima_params)

    respond_to do |format|
      if @clima.save
        format.html { redirect_to @clima, notice: 'Clima was successfully created.' }
        format.json { render :show, status: :created, location: @clima }
      else
        format.html { render :new }
        format.json { render json: @clima.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /climas/1
  # PATCH/PUT /climas/1.json
  def update
    respond_to do |format|
      if @clima.update(clima_params)
        format.html { redirect_to @clima, notice: 'Clima was successfully updated.' }
        format.json { render :show, status: :ok, location: @clima }
      else
        format.html { render :edit }
        format.json { render json: @clima.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /climas/1
  # DELETE /climas/1.json
  def destroy
    @clima.destroy
    respond_to do |format|
      format.html { redirect_to climas_url, notice: 'Clima was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clima
      @clima = Clima.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clima_params
      params.require(:clima).permit(:name)
    end
end
