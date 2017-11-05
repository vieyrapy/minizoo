class EstadoMedico < ApplicationRecord
	validates :nombre,  presence: true, uniqueness: true, length: { minimum: 1, maximum: 30}
	
	has_many :ficha_medicas
end
