class Resource < ActiveRecord::Base
  attr_accessible :name, :url
  has_many :users, :through => :skills
  has_many :companies, :through => :needs
end
