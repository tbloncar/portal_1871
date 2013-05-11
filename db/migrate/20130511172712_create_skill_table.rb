class CreateSkillTable < ActiveRecord::Migration
  def change
    create_table :skills do |s|
      s.integer :user_id
      s.integer :resource_id
      s.integer :level_id
      s.string :description
    end
  end
end
