class Change < ActiveRecord::Migration[5.0]
  def change
  	add_reference :randos, :list
  	add_reference :books, :list
  	add_reference :movies, :list
  	add_reference :places, :list
  	add_reference :songs, :list
  end
end
