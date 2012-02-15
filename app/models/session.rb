class Session < ActiveRecord::Base
  has_one :slot
  has_one :location
  has_one :institution
  has_one :speaker, :class_name => "Person"
  has_one :helper, :class_name => "Person"
  
  has_many :sessionaudiences
  has_many :audiences, :through => :sessionaudiences
  has_many :sessionproducts
  has_many :products, :through => :sessionproducts
  has_many :sessionuserlevels
  has_many :userlevels, :through => :sessionuserlevels
  
end
