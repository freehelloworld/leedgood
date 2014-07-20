class Project < ActiveRecord::Base
	has_many :landdivisions
	mount_uploader :url, ImageUploader
	mount_uploader :allotmentplan, ImageUploader
end
