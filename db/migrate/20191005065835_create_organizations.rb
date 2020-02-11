class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations, id: :uuid do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :country
      # t.st_point :lonlat, geographic: true

      t.timestamps
    end

    # add_index :organizations, :lonlat, using: :gist
  end
end
