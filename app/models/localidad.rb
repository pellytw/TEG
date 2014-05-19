class Localidad < ActiveRecord::Base
  attr_accessible :cp, :nombre, :region_id

  has_many :establecimiento
  has_many :persona
  belongs_to :region

  def to_s
  	"#{ self.nombre }"
  end
  
end
