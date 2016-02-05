class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :deliver_date
      t.text :details
      t.references :customer, index: true
      t.datetime :last_stage_date

      t.timestamps
    end
  end
end
