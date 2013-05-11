class Changeroletable < ActiveRecord::Migration
  def change
        change_column :roles, :name, :string
    end


end
