class Funcionario < ActiveRecord::Base
    belongs_to :obra
    belongs_to :function
    belongs_to :report
end
