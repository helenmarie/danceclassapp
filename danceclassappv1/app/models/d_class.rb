class DClass < ActiveRecord::Base

	validates :dancetype, presence:true
	validates :day, presence:true
	validates :location, presence:true

  def self.search(search)
    if search
        @searchresult = DClass.where(dancetype: search)    
    else
        @searchresult = DClass.all
    end
  end

end
