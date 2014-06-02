class Persona < ActiveRecord::Base
  attr_accessible :apellidos, :calle, :depto, :email, :estado_civil_id, :fecha_nacimiento, :localidad_id, :nombres, :nro_calle, :nro_documento, :piso, :sexo_id, :situacion_revista_id, :telefono_contacto, :tipo_documento_id
  attr_accessible :establecimiento_id, :tipo_gestion_id, :servicio_transporte, :rol, :grado_anio_alumno, :regular, :activo_pasivo_docente, :frente_alumnos
  attr_accessible :grado_docente, :turno_docente, :activo_pasivo_aux, :lugar_auxiliares, :cant_cuadras, :distancia_km

  belongs_to :estado_civil
  belongs_to :localidad
  belongs_to :sexo
  belongs_to :situacion_revistum
  belongs_to :tipo_documento
  belongs_to :tipo_gestion
  belongs_to :establecimiento
  
  def to_s
  	"#{ self.nombres } + #{apellidos}"
  end
end
