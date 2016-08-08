class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :description
      t.string :img_url
      t.string :list_type

      t.timestamps
    end
  end
end
