json.extract! articulo, :id, :titulo, :descripcion, :foto, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
