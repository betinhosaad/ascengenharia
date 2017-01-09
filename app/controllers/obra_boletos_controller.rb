class ObraBoletosController < ApplicationController
  before_filter :authenticate_user!
  
  def index
     if params[:obra_id].present?
      @obra = Obra.find(params[:obra_id])
    end
  end
end
