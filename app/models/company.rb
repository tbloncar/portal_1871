class Company < ActiveRecord::Base
  attr_accessible :name, :website, :bio, :logo_url, :twitter, :linkedin, :google


end