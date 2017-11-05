require 'carrierwave/orm/activerecord'
class FichaMedica < ApplicationRecord
	mount_uploader :archivos, AvatarUploader
	mount_uploader :audio, AvatarUploader
	mount_uploader :video, AvatarUploader

	validates :dolencia, :presence => {message: "El Pre-diagnóstico no puede estar en blanco"} 
	validates :veterinario, :presence => {message: "Por favor introduzca el nombre del Veterinario/Medico" }
	validates :enfermedad, :presence => {message: "El Motivo de la consulta no puede estar en blanco" }
	validates :descripcion, length: { maximum: 1000}
	validates :archivos, presence: false
	belongs_to :animal
	belongs_to :estado_medico
	
	
	has_many :tareas, autosave: true, dependent: :destroy
	accepts_nested_attributes_for :tareas

	def to_s
    	enfermedad
  	end
end
