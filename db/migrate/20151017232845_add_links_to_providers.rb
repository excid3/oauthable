class AddLinksToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :domain, :string
    add_column :providers, :register_url, :string
  end
end
