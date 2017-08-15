class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.date :shelflife

      t.timestamps null: false
    end
  end
end
