class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :name
      t.string :environment

      t.timestamps null: false
    end
  end
end
