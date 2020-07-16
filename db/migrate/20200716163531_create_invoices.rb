class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :subject
      t.date :due_date
      t.float :amount

      t.timestamps
    end
  end
end
