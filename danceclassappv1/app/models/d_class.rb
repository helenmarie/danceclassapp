class DClass < ActiveRecord::Base

	validates :dancetype, presence:true
	validates :day, presence:true
	validates :location, presence:true

  def self.search(search)
        @searchresult = DClass.where(dancetype: search)    
  end


end
