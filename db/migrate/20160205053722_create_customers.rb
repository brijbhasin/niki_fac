class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :contact_person
      t.string :contact_phone
      t.string :location

      t.timestamps
    end
  end
end
