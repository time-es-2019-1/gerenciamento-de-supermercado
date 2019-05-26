class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :streetName
      t.string :cityName
      t.string :zipCode
      t.timestamps
    end
  end
end
