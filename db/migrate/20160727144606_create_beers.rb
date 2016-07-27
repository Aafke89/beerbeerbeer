class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :brewery
      t.string :name
      t.string :style
      t.string :volume
      t.string :alcohol
      t.string :keg

      t.timestamps null: false
    end
  end
end
