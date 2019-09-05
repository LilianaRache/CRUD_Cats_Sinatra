class CreateCatsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
           t.string :nombre
           t.string :raza
           t.string :color
           t.integer :edad
           t.datetime :created_at
           t.datetime :updated_at
       end
  end
end
