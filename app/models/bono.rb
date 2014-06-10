class Bono < ActiveRecord::Base
  attr_accessible :cant_pasajes, :descripcion, :emisor, :empresa_transporte_id, :entregado, :fecha_emision, :fecha_entregado, :nro_bono, :persona_id

  belongs_to :empresa_transporte
  belongs_to :persona

  private
  def set_defaults
    self.entregado ||= false
  end

end
