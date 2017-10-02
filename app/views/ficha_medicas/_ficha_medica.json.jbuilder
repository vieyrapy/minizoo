json.extract! ficha_medica, :id, :fecha_ingreso, :estado_salud, :enfermedad, :dolencia, :descripcion, :archivos, :internacion, :created_at, :updated_at
json.url ficha_medica_url(ficha_medica, format: :json)
