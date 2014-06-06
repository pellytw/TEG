class EmpresaTransporte < ActiveRecord::Base
  attr_accessible :localidad_id, :nombre
  
  has_many :tramo

  def to_s
  	"#{ self.nombre }"
  end
end
