class Localidad < ActiveRecord::Base
  attr_accessible :cp, :nombre, :region_id
  
  belongs_to :region
  
  has_many :establecimiento
  has_many :tramo
  has_many :empresa_transporte
  
  def to_s
  	"#{ self.nombre }"
  end
end
