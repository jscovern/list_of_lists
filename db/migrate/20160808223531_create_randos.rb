class CreateRandos < ActiveRecord::Migration[5.0]
  def change
    create_table :randos do |t|
      t.string :title
      t.string :description
      t.string :img_url
      t.string :link_url

      t.timestamps
    end
  end
end
