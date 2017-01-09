class AddAttachmentFaturaToBoletos < ActiveRecord::Migration
  def self.up
    change_table :boletos do |t|
      t.attachment :fatura
    end
  end

  def self.down
    remove_attachment :boletos, :fatura
  end
end
