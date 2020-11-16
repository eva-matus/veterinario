class CreatePetHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_histories do |t|
      t.float :weight
      t.float :height
      t.string :diagnostic
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
