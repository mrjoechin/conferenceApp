class Person < ActiveRecord::Base
  has_many :sessions
  
  def selectOptions
    "#{first_name} #{last_name}"
  end
end
