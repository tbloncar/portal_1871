class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :first_name, :last_name,
        :bio, :github, :twitter, :dribbble, :linkedin, :website, :google
  belongs_to :membership
  has_many :companies, :through => :membership
end
