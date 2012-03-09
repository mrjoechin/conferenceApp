class Session < ActiveRecord::Base
  belongs_to :slot
  belongs_to :location
  belongs_to :institution
  belongs_to :speaker, :class_name => "Person"
  belongs_to :helper, :class_name => "Person"
  
  has_many :sessionaudience
  has_many :audiences, :through => :sessionaudience
  has_many :sessionproduct
  has_many :products, :through => :sessionproduct
  has_many :sessionuserlevel
  has_many :userlevels, :through => :sessionuserlevel
  
end
