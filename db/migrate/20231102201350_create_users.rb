class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :nickname
      t.integer :points, default: 0
      t.string :email

      t.timestamps
    end
  end
end
