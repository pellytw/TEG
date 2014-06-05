class Persona < ActiveRecord::Base
  attr_accessible :apellidos, :calle, :depto, :email, :estado_civil_id, :fecha_nacimiento, :localidad_id, :nombres, :nro_calle, :nro_documento, :piso, :sexo_id, :situacion_revista_id, :telefono_contacto, :tipo_documento_id
  attr_accessible :establecimiento_id, :tipo_gestion_id, :servicio_transporte, :rol, :grado_anio_alumno, :regular, :activo_pasivo_docente, :frente_alumnos
  attr_accessible :grado_docente, :turno_docente, :activo_pasivo_aux, :lugar_auxiliares, :cant_cuadras, :distancia_km
  attr_accessible :user_id

  has_one :user

  belongs_to :estado_civil
  belongs_to :localidad
  belongs_to :sexo
  belongs_to :situacion_revistum
  belongs_to :tipo_documento
  belongs_to :tipo_gestion

  has_many :tramo, :dependent => :destroy
  attr_accessible :tramo_attributes
  accepts_nested_attributes_for :tramo, allow_destroy: true

  def to_s
  	"#{ self.nombres } + #{ self.apellidos }"
  end

  attr_accessible :persona_establecimientos_attributes
  attr_accessible :persona_attributes

  attr_accessible :establecimiento_tokens
  has_many :persona_establecimiento, :dependent => :destroy
  has_many :establecimientos, :through => :persona_establecimiento
  attr_reader :establecimiento_tokens


  def establecimiento_tokens=(ids)
    self.establecimiento_ids = ids.split(",")
  end

end
