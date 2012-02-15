class Product < ActiveRecord::Base
  has_many :sessionproducts
  has_many :sessions, :through => :sessionproducts
end
