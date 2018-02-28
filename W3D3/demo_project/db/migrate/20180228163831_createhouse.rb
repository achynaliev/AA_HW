class Createhouse < ActiveRecord::Migration[5.1]
  def change
    create_table :house do |t|
      t.text :address, null: false
    end
  end
end
