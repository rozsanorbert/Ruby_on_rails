class CreateOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :offices do |t|
      t.string :country
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
