class Listacategoria < ActiveRecord::Base
  attr_accessible :nombre
  has_many :listas
end
