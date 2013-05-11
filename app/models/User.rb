class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :first_name, :last_name,
        :bio, :github, :twitter, :dribbble, :linkedin, :website, :google
  has_many :memberships
  has_many :companies, :through => :memberships
  has_many :resources, :through => :skills
  has_many :skills
end
