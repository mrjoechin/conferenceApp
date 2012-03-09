class Userlevel < ActiveRecord::Base
  has_many :sessionuserlevel, :dependent => :destroy
  has_many :sessions, :through => :sessionuserlevel
end
