class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.integer :service_id, null: false
      t.string :scope
      t.text :auth

      t.timestamps null: false
    end
  end
end
