class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.bigint :phone
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :bio
      t.string :avatar
      t.string :cover

      t.timestamps
    end
  end
end
