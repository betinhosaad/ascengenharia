class Galerium < ActiveRecord::Base
    belongs_to :obra
    has_many :images, :dependent => :destroy
    accepts_nested_attributes_for :images, allow_destroy: true
end
