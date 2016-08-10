class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :description
      t.string :img_url

      t.timestamps
    end
  end
end
