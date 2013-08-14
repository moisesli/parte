class Parteobra < ActiveRecord::Base
  attr_accessible :casa, :fechaingreso, :frente, :jefefrente, :maestrodeobra, :subsectore_id, :numeroparte, :subcontratista,  :partidas_attributes, :materiales_attributes, :equipos_attributes, :descompociciones_attributes
      
  has_many :partidas, :dependent => :destroy
  has_many :materiales , :dependent => :destroy
  has_many :equipos , :dependent => :destroy  
  has_many :descompociciones , :dependent => :destroy  
  belongs_to :subsectore


  accepts_nested_attributes_for :partidas, reject_if: proc { |attributes| attributes['nombre'].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :materiales, reject_if: proc { |attributes| attributes['descripcion'].blank? }, :allow_destroy => true  
  accepts_nested_attributes_for :equipos, reject_if: proc { |attributes| attributes['descripcion'].blank? }, :allow_destroy => true    
  accepts_nested_attributes_for :descompociciones, reject_if: proc { |attributes| attributes['descripcion'].blank? }, :allow_destroy => true    

  
  #validates :numeroparte, :presence => true
  validates_presence_of :numeroparte


end
