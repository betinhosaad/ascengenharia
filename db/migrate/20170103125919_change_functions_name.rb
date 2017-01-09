class ChangeFunctionsName < ActiveRecord::Migration
  def change
    rename_column :functions, :type, :name
  end
end
