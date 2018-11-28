class CreateLiquors < ActiveRecord::Migration[5.2]
  def change
    create_table :liquors do |t|
      t.string :name
      t.references :drink, foreign_key: true

      t.timestamps
    end
  end
end
