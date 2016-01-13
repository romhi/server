class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :official_name
      t.string :INN
      t.string :KPP
      t.text :address
      t.string :account_number
      t.string :director
      t.string :bookkeeper
      t.text :bank_info
      t.string :BIK
      t.string :loro_account
      t.integer :legal
      t.integer :default

      t.timestamps null: false
    end
  end
end
