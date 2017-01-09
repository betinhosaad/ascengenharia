class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :name
      t.string :phone, :limit => 15
      t.string :rg, :limit => 20
      t.string :cpf, :limit => 11
      t.string :adress
      t.string :ctps
      t.date :in_date
      t.date :out_date
      t.string :function
      t.integer :obra_id
      t.integer :function_id

      t.timestamps null: false
    end
  end
end
