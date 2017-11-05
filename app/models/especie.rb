class Especie < ApplicationRecord
	validates :nombre,  presence: true, uniqueness: true, length: { minimum: 1, maximum: 8}
	
	has_many :animales
end
