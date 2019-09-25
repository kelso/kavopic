class CreateTransactionCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_categories, id: :uuid do |t|
      t.string :name
      t.integer :default_amount

      t.timestamps
    end
  end
end
