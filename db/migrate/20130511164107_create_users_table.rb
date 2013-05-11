class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,
      t.string :password_digest,
      t.string :first_name,
      t.string :last_name,
      t.text :bio,
      t.string :github,
      t.string :twitter,
      t.string :dribbble,
      t.string :linkedin,
      t.string :website,
      t.string :google,
      t.timestamps
    end
  end
end
