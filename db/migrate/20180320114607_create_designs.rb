class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :name, null: false
      t.references :genre, foreign_key: true
      t.references :collar_type, foreign_key: true
      t.references :sleeve_type, foreign_key: true
      t.references :cuff_type, foreign_key: true
      t.references :swimsuit_type, foreign_key: true
      t.references :tops_type, foreign_key: true
      t.references :skirt_type, foreign_key: true
      t.references :size, foreign_key: true
      t.references :sex, foreign_key: true
      t.text :memo
      t.string :design_img
      t.string :pattern_img
      t.string :finished_img
      t.integer :view_point, default: 0
      t.integer :download_point, default: 0

      t.timestamps
    end
  end
end
