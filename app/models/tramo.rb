class Tramo < ActiveRecord::Base
  attr_accessible :domingo_cant, :empresa_transporte_id, :jueves_cant, :localidad_destino_id, :localidad_origen_id, :lunes_cant, :martes_cant, :miercoles_cant, :persona_id, :sabado_cant, :viernes_cant
  belongs_to :persona
end
