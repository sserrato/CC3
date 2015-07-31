class AddColumnsToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :location_street, :string
    add_column :jobs, :location_city, :string
    add_column :jobs, :location_zip, :integer
    add_column :jobs, :state, :string
  end
end
