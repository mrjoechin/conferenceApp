class Audience < ActiveRecord::Base
  has_many :sessionaudience, :dependent => :destroy
  has_many :sessions, :through => :sessionaudience
end
