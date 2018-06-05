class AddImageToSeries < ActiveRecord::Migration[5.1]
  def change
    add_column :series, :image, :string
  end
end
