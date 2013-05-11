class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :first_name, :last_name,
        :bio, :github, :twitter, :dribbble, :linkedin, :website, :google

end
