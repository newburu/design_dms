class CreateCuffTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :cuff_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
