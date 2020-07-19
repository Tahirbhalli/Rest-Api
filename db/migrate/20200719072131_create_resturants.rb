class CreateResturants < ActiveRecord::Migration[6.0]
  def change
    create_table :resturants do |t|
      t.string :name
      t.string :typeresturant
      t.string :decription
      t.string :review
      t.references :owner

      t.timestamps
    end
  end
end
