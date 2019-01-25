class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|

      t.integer :hotelid
      t.string :hotelname
      t.integer :star
      t.integer :tarating
      t.integer :reviewcount
      t.integer :price
      t.string :locality
      t.string :country
      t.string :city
      t.string :thumb
      t.text :description

    end
  end
end
