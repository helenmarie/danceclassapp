class DClass < ActiveRecord::Base
	validates :type, presence:true
	validates :day, presence:true
	validates :location, presence:true
end
