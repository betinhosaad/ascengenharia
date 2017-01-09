class CreateControleDeObras < ActiveRecord::Migration
  def change
    create_table :controle_de_obras do |t|
      t.date :data
      t.integer :nf
      t.string :fornecedor
      t.decimal :recebido, :precision => 8, :scale => 2
      t.decimal :pago, :precision => 8, :scale => 2
      t.belongs_to :obra, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
