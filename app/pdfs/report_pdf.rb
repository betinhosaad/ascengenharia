class ReportPdf < Prawn::Document
    def initialize(report, view)
        super(top_margin: 50)
        @report = report
        @view = view
        pdf
        
    end
    
    def pdf
        bounding_box([0, cursor], :width => 540, :height => 120) do
            transparent(0.5) { stroke_bounds }
            
            bounding_box([0, cursor], :width => 540, :height => 70) do
                transparent(0.5) { stroke_bounds }
                image "#{Rails.root}/public/images/report.png", :width => 540, :height => 70

            end
            
                text @report.obra.description, :align => :center, :valign => :center, :size => 20

        end
        
        
        bounding_box([0, cursor], :width => 540, :height => 40) do
                transparent(0) { stroke_bounds }
                text "#{@report.obra.locale}", :align => :center, :valign => :center
                text "RDO nº #{@report.id}", :align => :right, :valign => :center
            end
        

        table([ ["Obra", "#{@report.obra.name}", "Início da obra", "#{ @report.obra.start_date.strftime("%d / %m / %Y") || 0 }", 
                 "Tempo decorrido", "#{((Date.current) - (@report.obra.start_date.to_date)).to_i} dias" ]], 
                :cell_style => { :overflow => :shrink_to_fit, :size => 10, :height => 30}, 
                :column_widths => [70, 180,50,90,70,80]) do
                
                columns(0).background_color = "BCBCBC"
                columns(2).background_color = "BCBCBC"
                columns(4).background_color = "BCBCBC"
                
                columns(0).align = :right
                columns(2).align = :right
                columns(4).align = :right
       
        end
        
        table([["Responsável Técnico", "Alberto Saad Coppolla", "Dia da Semana", 
        "#{case Date.current.strftime("%A") 
            when "Monday"
            "Segunda-feira"
            when "Tuesday"
            "Terça-feira"
            when "Wednesday"
            "Quarta-feira"
            when "Thursday"
            "Quinta-feira"
            when "Saturday"
            "Sexta-feira"
            when "Sábado"
            "Sábado"
            else 
            "Domingo"
            end
        }" 
        ]], 
        :cell_style => { :overflow => :shrink_to_fit, :size => 10, :height => 30}, 
        :column_widths => [70,180,50,240] ) do
            columns(0).background_color = "BCBCBC"
            columns(2).background_color = "BCBCBC"
            columns(0).align = :right
            columns(2).align = :right
        end
        
        move_down(15)
        
            
        table( [["Tempo"]], :width => 540, :cell_style => {:align => :center, :size => 10}, :row_colors => ["BCBCBC"])
        
        move_down(2)
        
        pad(10) {image "#{Rails.root}/public/images/condicoes.png", :fit => [440, 120], :position => 70, :overflow => :shrink_to_fit}

        table([ ["Condição", sol(@report.clima.id ) , nublado(@report.clima.id ), chuva(@report.clima.id ), imp(@report.clima.id )]], 
                :cell_style => { :overflow => :shrink_to_fit, :size => 10, :height => 20, :align => :center}, 
                :column_widths => [50, 122.5, 122.5, 122.5, 122.5]) do
                    columns(0).background_color = "BCBCBC"
                end
                
        move_down(15)
        
            
        table( [["Tarefas Realizadas"]], :width => 540, :cell_style => {:align => :center, :size => 10}, :row_colors => ["BCBCBC"])
        
        move_down(2)
        
        bounding_box([0, cursor], :width => 540, :height => 40) do
            
                transparent(0) { stroke_bounds }
                indent(10) do
                pad (10) {text "#{@report.tarefas}", :min_font_size => 8, :size => 10, :overflow => :shrink_to_fit}
                end
            end
        move_down(15)
        
            
        table( [["Ocorrências"]], :width => 540, :cell_style => {:align => :center, :size => 10}, :row_colors => ["BCBCBC"])
        
        move_down(2)
        
        bounding_box([0, cursor], :width => 540, :height => 40) do
            
                transparent(0) { stroke_bounds }
                indent(10) do
                pad (10) {text "#{@report.ocorrencias}", :min_font_size => 8, :size => 10, :overflow => :shrink_to_fit}
                end
            end
        move_down(15)
        
            
        table( [["Equipe Envolvida"]], :width => 540, :cell_style => {:align => :center, :size => 10}, :row_colors => ["BCBCBC"])
        
        table line_item_rows, :width => 540, :cell_style => {:align => :center, :size => 10} do
            row(0).font_style = :bold
            self.header = true
        end
        
        move_down(2)
        
    end
    
    
    def line_item_rows
       [["Nome", "Função"]] +
       @report.funcionarios.map do |f|
            [f.name, f.function.name]
       end
    end
    
    def sol(var)
        if var == 1
            "X"
        else
            ""
        end
    end
    
    def nublado(var)
        if var == 4
            "X"
        else
            ""
        end
    end
    
    def chuva(var)
        if var == 2
            "X"
        else
            ""
        end
    end
    
    def imp(var)
        if var == 3
            "X"
        else
            ""
        end
    end
end