class Membership < ActiveRecord::Migration
  def up
    create_table :memberships do |m|
      m.integer :user
      m.integer :company
      m.string   :role
  end


  def down
  end

  end
end
