json.extract! animal, :id, :nombre_cientifico, :nombre_comun, :macho, :edad, :origen, :descripcion, :created_at, :updated_at
json.url animal_url(animal, format: :json)
