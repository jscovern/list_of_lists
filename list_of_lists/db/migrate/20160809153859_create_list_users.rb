class CreateListUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :list_users do |t|

      t.timestamps
    end
  end
end
