class EstadoMedico < ApplicationRecord
	validates :nombre,  presence: true
	has_many :ficha_medicas
end
