class Membership < ActiveRecord::Base
    attr_accessible :user_id, :company_id, :role_id
    belongs_to :user
    belongs_to :company
    has_one :role
end
