class AddObraIdToGaleria < ActiveRecord::Migration
  def change
    add_column :galeria, :obra_id, :integer
  end
end
