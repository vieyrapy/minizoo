require 'carrierwave/orm/activerecord'
class FichaMedica < ApplicationRecord
	mount_uploader :archivos, AvatarUploader
	mount_uploader :audio, AvatarUploader
	mount_uploader :video, AvatarUploader
	belongs_to :animal
	
	
	has_many :tareas, autosave: true, dependent: :destroy
	accepts_nested_attributes_for :tareas
end
