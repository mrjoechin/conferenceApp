class Sessionuserlevel < ActiveRecord::Base
  belongs_to :session
  belongs_to :userlevel
end
