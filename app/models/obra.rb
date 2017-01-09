class Obra < ActiveRecord::Base
    belongs_to :user
    has_many :documentos
    has_many :boletos
    has_many :controle_de_obras
    has_many :galeria
    has_many :funcionarios
    has_many :reports
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
