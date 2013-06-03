class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :details
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :postal
      t.string :country
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end
