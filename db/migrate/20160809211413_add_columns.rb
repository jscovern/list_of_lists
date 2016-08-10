class AddColumns < ActiveRecord::Migration[5.0]
  def change
  	change_table :list_users do |t|
  		t.references :user 
  		t.references :list
  end
end
end
