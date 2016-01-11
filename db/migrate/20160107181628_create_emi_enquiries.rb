class CreateEmiEnquiries < ActiveRecord::Migration
  def change
    create_table :emi_enquiries do |t|
      t.float :principal_amount
      t.float :rate_of_intrest
      t.integer :number_of_months
      t.float :emi
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
