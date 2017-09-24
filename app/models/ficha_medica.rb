require 'carrierwave/orm/activerecord'
class FichaMedica < ApplicationRecord
	mount_uploader :archivos, AvatarUploader
	mount_uploader :audio, AvatarUploader
	mount_uploader :video, AvatarUploader
	belongs_to :animal
	has_many :internados
end
