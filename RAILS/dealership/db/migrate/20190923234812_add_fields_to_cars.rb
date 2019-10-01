class AddFieldsToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :image_file_name, :string, default: ''
    add_column :cars, :mileage, :integer
  end
end
