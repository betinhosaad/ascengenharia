class CreateClimas < ActiveRecord::Migration
  def change
    create_table :climas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
