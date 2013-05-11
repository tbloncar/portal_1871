class CreateCompanyTable < ActiveRecord::Migration
  def change
    create_table :companies do |c|
      c.string :name
      c.string :website
      c.text :bio
      c.string :logo_url
      c.string :twitter
      c.string :linkedin
      c.string :google
    end
  end
end
