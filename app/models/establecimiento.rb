class Establecimiento < ActiveRecord::Base
  attr_accessible :ambito, :anexo, :codigo_jurisdiccional, :cue, :cue_anexo, :domicilio, :localidad_id, :nombre, :sector
end
