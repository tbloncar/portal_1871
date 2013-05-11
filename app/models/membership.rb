class Membership < ActiveRecord::Base
    attr_accessible :user_id, :company_id, :role_id
end
