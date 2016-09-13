class RemoveImagefromCities < ActiveRecord::Migration[5.0]
  def change
    remove_column :cities, :image_url
  end
end
