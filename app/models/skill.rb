class Skill < ActiveRecord::Base
  attr_accessible :user_id, :resource_id, :level_id, :description
  has_one :level, :as => :rankable
end