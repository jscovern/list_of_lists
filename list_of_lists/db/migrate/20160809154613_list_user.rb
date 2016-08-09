class ListUser < ActiveRecord::Migration[5.0]
  def change
  create_join_table :lists, :users, table_name: :list_user
  end
end
