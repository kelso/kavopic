class CreateSampleItems < ActiveRecord::Migration[6.0]
  def change
    create_table :sample_items, id: :uuid do |t|
      t.string :name
      t.boolean :enabled

      t.timestamps
    end
  end
end
