module ApplicationHelper
    
    def to_reais(amount)
    if (amount.to_f < 0)
      number_to_currency(amount.abs, :precision => 0, :format => "-%u%n")
    else
      number_to_currency(amount, :format => "%u %n", :separator => ",", :delimiter => ".", :unit => "R$")
    end
    end   
end
