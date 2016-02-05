class CreateProjectActivities < ActiveRecord::Migration
  def change
    create_table :project_activities do |t|
      t.string :name
      t.boolean :start_date
      t.boolean :deliver_date
      t.references :project, index: true
      t.text :details

      t.timestamps
    end
  end
end
