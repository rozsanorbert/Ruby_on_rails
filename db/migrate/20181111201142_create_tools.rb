class CreateTools < ActiveRecord::Migration[5.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.integer :quantity
      t.references :office, foreign_key: true

      t.timestamps
    end
  end
end
