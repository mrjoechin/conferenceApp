class Userlevel < ActiveRecord::Base
  has_many :sessionuserlevels
  has_many :sessions, :through => :sessionuserlevels
end
