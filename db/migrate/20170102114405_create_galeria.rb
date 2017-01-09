class CreateGaleria < ActiveRecord::Migration
  def change
    create_table :galeria do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
