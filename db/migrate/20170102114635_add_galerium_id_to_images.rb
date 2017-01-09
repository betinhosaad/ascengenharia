class AddGaleriumIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :galerium_id, :integer
  end
end
