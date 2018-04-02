class AddOpenTypeToDesign < ActiveRecord::Migration[5.1]
  def change
    add_column :designs, :open_type_id, :integer, default: 0
  end
end
