class AddProjectIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :project_id, :integer
    remove_column :services, :user_id
  end
end
