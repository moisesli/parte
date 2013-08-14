class Lista < ActiveRecord::Base
  attr_accessible :nombre, :listacategoria_id
  belongs_to :listacategoria
end
