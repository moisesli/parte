class Subfase < ActiveRecord::Base
  attr_accessible :codigo, :descripcion, :fase_id
  belongs_to :fase
  has_many :partidasdecontrols
end
