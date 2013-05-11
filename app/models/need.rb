class Need < ActiveRecord::Base
  attr_accessible :company_id, :description, :level_id, :resource_id
  has_one :level, :as => :rankable
  belongs_to :company
  belongs_to :resource
end
