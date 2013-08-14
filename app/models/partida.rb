class Partida < ActiveRecord::Base
  attr_accessible :diametro, :terreno, :metrado, :nombre, :observacion, :parteobra_id, :profundidad, :serieclase, :unidad
  belongs_to :parteobra
  validates :nombre, :presence => true
end
