class CreateOrgRoles < ActiveRecord::Migration
  def change
    create_table :org_roles do |t|
      t.string :name
      t.boolean :manager
      t.references :user, index: true

      t.timestamps
    end
  end
end
