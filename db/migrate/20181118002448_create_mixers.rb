class CreateMixers < ActiveRecord::Migration[5.2]
  def change
    create_table :mixers do |t|
      t.string :name
      t.references :drink, foreign_key: true

      t.timestamps
    end
  end
end
