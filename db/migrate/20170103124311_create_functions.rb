class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
