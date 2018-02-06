class Cite < ApplicationRecord
	validates :nombre,  presence: true, uniqueness: true, length: { minimum: 1, maximum: 16}

	has_many :animales
end
