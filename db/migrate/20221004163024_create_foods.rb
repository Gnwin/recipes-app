class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_unit, default: 'g'
      t.integer :price, default: 0
      t.decimal :quantity, default: 0

      t.timestamps
    end
    add_reference(:foods, :user, foreign_key: { to_table: :users })
  end
end
