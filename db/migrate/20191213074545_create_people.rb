class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.text :name, null: false
      t.string :email,
        null: false,
        unique: true

      t.timestamps
    end
  end
end
