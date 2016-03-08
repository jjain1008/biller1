class AddEmailAddress < ActiveRecord::Migration
  def up
  	add_column :customers, :email, :string
  end

  def down
  	cant_go_back
  	remove_column :customers, :email
  end
end
