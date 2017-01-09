class AddUserIdToObras < ActiveRecord::Migration
  def change
    add_column :obras, :user_id, :integer
  end
end
