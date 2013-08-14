class Sectore < ActiveRecord::Base
  attr_accessible :codigo, :descripcion
  has_many :subsectores  
end
