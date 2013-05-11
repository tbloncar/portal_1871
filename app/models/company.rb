class Company < ActiveRecord::Base
  attr_accessible :name, :website, :bio, :logo_url, :twitter, :linkedin, :google
  has_many :memberships
  has_many :users, :through => :memberships
end
