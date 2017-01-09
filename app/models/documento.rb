class Documento < ActiveRecord::Base
    belongs_to :obra
    has_attached_file :document
    validates_attachment :document, :content_type => { :content_type => [  /\Aimage\/.*\z/, %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)] }
end
