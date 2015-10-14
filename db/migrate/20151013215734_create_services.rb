class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :user_id, null: false
      t.integer :provider_id, null: false
      t.string :api_key
      t.string :api_secret

      t.timestamps null: false
    end
  end
end
