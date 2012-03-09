class Sessionaudience < ActiveRecord::Base
  belongs_to :session
  belongs_to :audience
end
