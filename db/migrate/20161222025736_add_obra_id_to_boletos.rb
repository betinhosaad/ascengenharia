class AddObraIdToBoletos < ActiveRecord::Migration
  def change
    add_column :boletos, :obra_id, :integer
  end
end
