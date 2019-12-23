class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :user_email,
        null: false,
        unique: true
      t.string :phone_number, null: false

      t.timestamps
    end
  end
end
