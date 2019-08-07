class CreateRestaurents < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurents do |t|
      t.string :name
      t.string :adress
      t.string :phone_number
      t.string :category

      t.timestamps
    end
  end
end
