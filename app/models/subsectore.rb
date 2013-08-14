class Subsectore < ActiveRecord::Base
  attr_accessible :codigo, :descripcion, :sectore_id
  belongs_to :sectore
  has_many :partidasdecontrols  
  has_many :parteobras
end
