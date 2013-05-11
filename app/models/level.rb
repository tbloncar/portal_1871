class Level < ActiveRecord::Base
  attr_accessible :name
  belongs_to :rankable, :polymorphic => true
end
