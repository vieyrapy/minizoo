class Animal < ApplicationRecord

	belongs_to :alimento
	belongs_to :cite
	belongs_to :especie
	belongs_to :estado_conservacion
end
