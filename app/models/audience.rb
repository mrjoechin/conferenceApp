class Audience < ActiveRecord::Base
  has_many :sessionaudiences
  has_many :sessions, :through => :sessionaudiences
end
