require 'carrierwave/orm/activerecord'
class Articulo < ApplicationRecord
	mount_uploader :foto, AvatarUploader
end
