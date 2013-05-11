class User < ActiveRecord::Base
  has_secure_password
  has_many :memberships
  has_many :companies, :through => :memberships
  has_many :resources, :through => :skills
  has_many :skills

  attr_accessible :email, :password_digest, :first_name, :last_name,
        :bio, :github, :twitter, :dribbble, :linkedin, :website, :google

  validates :email, uniqueness: true

end
