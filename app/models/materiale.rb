class Materiale < ActiveRecord::Base
  attr_accessible :cantidad, :descripcion, :observacion, :parteobra_id, :unidad, :partidasdecontrol_id
  belongs_to :parteobra
end
