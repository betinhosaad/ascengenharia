class AddAttachmentDocumentToDocumentos < ActiveRecord::Migration
  def self.up
    change_table :documentos do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :documentos, :document
  end
end
