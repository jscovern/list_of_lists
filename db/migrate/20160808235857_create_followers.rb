class CreateFollowers < ActiveRecord::Migration[5.0]
  def change
    create_table :followers do |t|
    	t.belongs_to :user
    	t.belongs_to :followers, as: :user
      t.timestamps
    end
  end
end
