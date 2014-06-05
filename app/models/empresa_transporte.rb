class EmpresaTransporte < ActiveRecord::Base
  attr_accessible :localidad_id, :nombre
  def to_s
  	"#{ self.nombre }"
  end
end
