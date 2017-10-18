class Animal < ApplicationRecord
	

	belongs_to :alimento
	belongs_to :cite
	belongs_to :estado_conservacion

	has_many :ficha_medicas

	accepts_nested_attributes_for :ficha_medicas
end
