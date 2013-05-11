class Role < ActiveRecord::Migration
  def up
      create_table :roles do |r|
        r.integer :name
    end

  def down
  end
end
end
