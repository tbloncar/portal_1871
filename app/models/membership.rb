class Membership < ActiveRecord::Base
    attr_accessible :user_id, :company_id, :role_id
    has_many :users
    has_many :companies
    has_one :role
end
