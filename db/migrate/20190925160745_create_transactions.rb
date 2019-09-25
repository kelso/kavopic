class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions, id: :uuid do |t|
      t.integer :amount
      t.references :created_by, type: :uuid, null: false, foreign_key: {to_table: :users}, index: true
      t.references :user, type: :uuid, null: false, foreign_key: {to_table: :users}, index: true
      t.references :transaction_category, type: :uuid, null: false, foreign_key: {to_table: :transaction_categories}, index: true

      t.timestamps
    end
  end
end
