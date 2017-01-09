class AcompanhamentoController < ApplicationController
  before_filter :authenticate_user!
  def index
    if params[:obra_id].present?
      @obra = Obra.find(params[:obra_id])
      @reports = @obra.reports.sort { |a,b| b.created_at <=> a.created_at } 
    end
  end
end
