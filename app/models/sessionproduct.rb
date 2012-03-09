class Sessionproduct < ActiveRecord::Base
  belongs_to :session
  belongs_to :product
end
