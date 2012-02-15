class Slot < ActiveRecord::Base
  has_many :sessions
end
