class Report < ActiveRecord::Base
  belongs_to :clima
  belongs_to :obra
  has_many :funcionarios
end
