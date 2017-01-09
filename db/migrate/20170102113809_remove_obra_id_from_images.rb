class RemoveObraIdFromImages < ActiveRecord::Migration
  def change
    remove_column :images, :obra_id, :integer
  end
end
