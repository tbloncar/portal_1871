class Company < ActiveRecord::Base
  attr_accessible :name, :website, :bio, :logo_url, :twitter, :linkedin, :google
  belongs_to :membership
  has_many :users, :through => :membership
end
