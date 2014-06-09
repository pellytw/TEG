class EmpresaTransporte < ActiveRecord::Base
  attr_accessible :localidad_id, :nombre
  attr_accessible :tipo_transporte_id

  belongs_to :localidad
  belongs_to :tipo_transporte 

  has_many :tramo

  def to_s
  	"#{ self.nombre }"
  end
end
