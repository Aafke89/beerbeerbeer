class CreateBrewers < ActiveRecord::Migration
  def change
    create_table :brewers do |t|
      t.string :name
      t.string :address
      t.string :zipcode
      t.string :city
      t.text :open, array: true

      t.timestamps null: false
    end
  end
end
