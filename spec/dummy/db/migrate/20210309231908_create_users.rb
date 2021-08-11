class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :subscriber
      t.date :birthday
      t.integer :credit_score
      t.string :favorite_color
      t.timestamps
    end
  end
end
