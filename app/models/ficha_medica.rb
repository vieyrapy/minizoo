require 'carrierwave/orm/activerecord'
class FichaMedica < ApplicationRecord
	mount_uploader :archivos, AvatarUploader
	belongs_to :animal
	has_many :internados
end
