class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :birth
      t.string :address
      t.string :phone
      t.integer :salary
      t.string :job
      t.references :office, foreign_key: true

      t.timestamps
    end
  end
end
