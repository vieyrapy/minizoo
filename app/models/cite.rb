class Cite < ApplicationRecord
	validates :nombre,  presence: true
	validates :nombre, length: { minimum: 1, maximum: 8}
	has_many :animales
end
