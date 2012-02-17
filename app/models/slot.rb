class Slot < ActiveRecord::Base
  has_many :sessions
  
  def selectOptions
    "#{start.strftime("%H:%M %p")} - #{finish.strftime("%H:%M %p")}"
  end

end
