class RemoveFunctionFromFuncionarios < ActiveRecord::Migration
  def change
    remove_column :funcionarios, :function, :string
  end
end
