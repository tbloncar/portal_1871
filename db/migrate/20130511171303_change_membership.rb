class ChangeMembership < ActiveRecord::Migration
  def change
    rename_column :memberships, :user, :user_id
    rename_column :memberships, :company, :company_id
    rename_column :memberships, :role, :role_id
    change_column :memberships, :role_id, :integer

  end

end
