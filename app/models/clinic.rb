class Clinic < ActiveRecord::Base

	  has_many :clinic_images, :dependent => :destroy
end
