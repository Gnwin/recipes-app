class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.decimal :quantity, default: 0

      t.timestamps
    end
    add_reference(:recipe_foods, :food, foreign_key: { to_table: :foods })
    add_reference(:recipe_foods, :recipe, foreign_key: { to_table: :recipes })
  end
end
