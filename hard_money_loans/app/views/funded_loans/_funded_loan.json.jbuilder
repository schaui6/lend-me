json.extract! funded_loan, :id, :title.string, :loan_amount.string, :purpose.string, :loan_position.string, :term.string, :property_type.text, :term.string, :loan_to_cost.string, :created_at, :updated_at
json.url funded_loan_url(funded_loan, format: :json)