class Alimento < ApplicationRecord
validates :nombre,  presence: true
validates :nombre, length: { minimum: 4, maximum: 16}, format: { with: /\A[a-zA-Z]+\z/}#Format es donde configuramos el formato aceptado en el campo en este caso solo aceptamos letras
has_many :animales
end
