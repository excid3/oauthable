class AddOptionsToServices < ActiveRecord::Migration
  def change
    add_column :services, :options, :text
  end
end
