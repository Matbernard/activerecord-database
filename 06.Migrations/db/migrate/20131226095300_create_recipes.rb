class CreateRecipes < ActiveRecord::Migration
  def change
    # your code here to create the Recipes table
    create_table :recipes do |t|
    	t.string :name
    	t.string :description
    	t.integer :length
    	t.integer :difficulty
  	end

  end

end