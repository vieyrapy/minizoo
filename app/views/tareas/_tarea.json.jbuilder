json.extract! tarea, :id, :fecha, :terminado, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
