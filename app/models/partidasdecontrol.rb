class Partidasdecontrol < ActiveRecord::Base
  attr_accessible :fase_id, :subfase_id, :subsectore_id, :sectore_id
  belongs_to :sectore
  belongs_to :subsectore
  belongs_to :fase
  belongs_to :subfase
  has_many :equipos
end