class Animal < ApplicationRecord
	validates :nombre_cientifico, :nombre_comun, :origen, :familia, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "Solo se permite textos" }
	validates :identificador,:descripcion,:edad, presence: true 
	validates :identificador, uniqueness: true


	
	belongs_to :alimento
	belongs_to :cite
	belongs_to :estado_conservacion
	belongs_to :especie
	has_many :ficha_medicas

	accepts_nested_attributes_for :ficha_medicas
end
