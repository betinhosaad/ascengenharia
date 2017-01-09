class AddObraIdToDocumentos < ActiveRecord::Migration
  def change
    add_column :documentos, :obra_id, :integer
  end
end
