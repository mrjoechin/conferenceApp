class Product < ActiveRecord::Base
  has_many :sessionproduct, :dependent => :destroy
  has_many :sessions, :through => :sessionproduct
end
