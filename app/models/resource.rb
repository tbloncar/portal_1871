class Resource < ActiveRecord::Base
  attr_accessible :name, :url
  belongs_to :skill
  belongs_to :need
end
