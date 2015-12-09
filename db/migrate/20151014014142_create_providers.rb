class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :omniauth_name
      t.string :gem_name
      t.string :github
      t.text :instructions

      t.timestamps null: false
    end
  end
end
