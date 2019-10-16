class CreateOperatorOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :operator_organizations, id: :uuid do |t|
      t.references :operator, type: :uuid, null: false, foreign_key: {to_table: :operators}, index: true
      t.references :organization, type: :uuid, null: false, foreign_key: {to_table: :organizations}, index: true
      t.boolean :organization_manager, default: false

      t.timestamps
    end
  end
end
