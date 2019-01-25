class CreateAdds < ActiveRecord::Migration[5.2]
  def change
    create_table :adds do |t|

      t.integer :hotelid
      t.string :hotelname
      t.string :custname
      t.string :custemail
      t.string :custcountry
      t.integer :custphone
      t.integer :roomreq

    end
  end
end
