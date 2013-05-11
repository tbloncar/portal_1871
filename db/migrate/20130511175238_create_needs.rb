class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.integer :company_id
      t.integer :resource_id
      t.integer :level_id
      t.string :description
    end
  end
end
