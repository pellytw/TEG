class PersonaEstablecimiento < ActiveRecord::Base
  attr_accessible :establecimiento_id, :persona_id, :cant_km, :cant_cuadras
  belongs_to :establecimiento
  belongs_to :persona

  private
  def set_defaults
    self.cant_km ||= 0
    self.cant_cuadras ||= 0
  end

end
