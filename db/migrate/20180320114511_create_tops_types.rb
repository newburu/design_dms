class CreateTopsTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :tops_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
