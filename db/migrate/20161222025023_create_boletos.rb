class CreateBoletos < ActiveRecord::Migration
  def change
    create_table :boletos do |t|
      t.decimal :preco, :precision => 8, :scale => 2
      t.date :vencimento
      t.text :descricao
      t.integer :parcelas
      t.boolean :situacao

      t.timestamps null: false
    end
  end
end
