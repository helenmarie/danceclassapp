class DClass < ActiveRecord::Base

	validates :dancetype, presence:true
	validates :day, presence:true
	validates :location, presence:true

end
