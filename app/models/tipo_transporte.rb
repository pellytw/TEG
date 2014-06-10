class TipoTransporte < ActiveRecord::Base
  attr_accessible :nombre
  has_many :empresa_transporte

  def to_s
  	"#{ self.nombre }"
  end
end
