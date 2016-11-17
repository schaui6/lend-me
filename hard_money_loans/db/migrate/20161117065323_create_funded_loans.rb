class CreateFundedLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :funded_loans do |t|
      t.string :title.string
      t.string :loan_amount.string
      t.string :purpose.string
      t.string :loan_position.string
      t.string :term.string
      t.string :property_type.text
      t.string :term.string
      t.string :loan_to_cost.string

      t.timestamps
    end
  end
end
