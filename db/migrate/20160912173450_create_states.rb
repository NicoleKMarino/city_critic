class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.string :image_url 
      t.timestamps
    end
  end
end
