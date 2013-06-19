class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
    end

    add_column :users, :role_id, :integer, null: false
  end
end
