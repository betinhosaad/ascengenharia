class AddObraIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :obra_id, :integer
  end
end
