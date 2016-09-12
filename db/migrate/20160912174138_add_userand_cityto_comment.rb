class AddUserandCitytoComment < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :users, index: true
    add_reference :comments, :cities, index: true
  end
end
