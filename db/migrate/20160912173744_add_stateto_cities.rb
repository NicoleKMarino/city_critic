class AddStatetoCities < ActiveRecord::Migration[5.0]
  def change
    add_reference :cities, :states, index: true
  end
end
