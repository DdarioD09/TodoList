class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.references :role, foreign_key: true, null: false, default: 2
      t.string :username, null: false
      t.string :email, null: false, :limit => 55
      t.string :password_digest, null: false

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
