class AddOrganizationToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :organization, type: :uuid, null: true, foreign_key: {to_table: :organizations}, index: true
  end
end
