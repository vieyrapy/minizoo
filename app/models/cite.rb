class Cite < ApplicationRecord
	validates :nombre,  presence: true
	validates :nombre, length: { minimum: 2, maximum: 5}
	has_many :animales
end
