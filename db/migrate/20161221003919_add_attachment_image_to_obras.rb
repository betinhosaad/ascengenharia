class AddAttachmentImageToObras < ActiveRecord::Migration
  def self.up
    change_table :obras do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :obras, :image
  end
end
