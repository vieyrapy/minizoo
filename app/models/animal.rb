class Animal < ApplicationRecord
	validates :nombre_cientifico, :nombre_comun, :origen, :familia, presence: true,  length: { minimum: 4, maximum: 100}
	validates :identificador,presence: true , length: { minimum: 4, maximum: 100}
	validates :descripcion, length: { maximum: 1000}
	validates :edad, presence: true 
	validates :identificador, uniqueness: true



	belongs_to :alimento
	belongs_to :cite
	belongs_to :estado_conservacion
	belongs_to :especie
	has_many :ficha_medicas

	accepts_nested_attributes_for :ficha_medicas
end
