class CreateObras < ActiveRecord::Migration
  def change
    create_table :obras do |t|
      t.string :name
      t.string :locale
      t.date :start_date
      t.text :description

      t.timestamps null: false
    end
  end
end
