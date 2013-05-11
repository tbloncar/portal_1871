class Company < ActiveRecord::Base
  attr_accessible :name, :website, :bio, :logo_url, :twitter, :linkedin, :google
  has_many :memberships
  has_many :users, :through => :memberships
  has_many :resources, :through => :needs
  has_many :needs
end
