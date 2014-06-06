class Tramo < ActiveRecord::Base
  attr_accessible :domingo_cant, :empresa_transporte_id, :jueves_cant, :localidad_destino_id, :localidad_origen_id, :lunes_cant, :martes_cant, :miercoles_cant, :persona_id, :sabado_cant, :viernes_cant
  
  belongs_to :persona
  belongs_to :empresa_transporte

  has_many :localidad

  before_save :set_defaults

  private
  def set_defaults
    self.lunes_cant ||= 0
    self.martes_cant ||= 0
    self.miercoles_cant ||= 0
    self.jueves_cant ||= 0
    self.viernes_cant ||= 0
    self.sabado_cant ||= 0
    self.domingo_cant ||= 0
  end
end
