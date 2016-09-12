class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :stars
      t.string :pros
      t.string :cons
      t.boolean :current_resident 
      t.timestamps
    end
  end
end
