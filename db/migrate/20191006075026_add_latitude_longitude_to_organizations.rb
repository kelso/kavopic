class AddLatitudeLongitudeToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :latitude, :decimal, {:precision=>10, :scale=>6}
    add_column :organizations, :longitude, :decimal, {:precision=>10, :scale=>6}
    add_index :organizations, [:latitude, :longitude]
  end
end
