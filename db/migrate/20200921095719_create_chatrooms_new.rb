class CreateChatroomsNew < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.string :title
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps  
    end
  end
end
