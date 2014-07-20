class Newhome < ActiveRecord::Base
	mount_uploader :frontimg, ImageUploader
	mount_uploader :structimg, ImageUploader
end
