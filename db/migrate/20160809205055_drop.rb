class Drop < ActiveRecord::Migration[5.0]
  def change
  	drop_table :list_user
  end
end
