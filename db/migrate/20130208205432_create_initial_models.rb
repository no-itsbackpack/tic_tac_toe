class CreateInitialModels < ActiveRecord::Migration
  def change
    create_table :boards do |t|

      t.timestamps
    end

    create_table :positions do |t|
      t.references :boards

      t.integer :row
      t.integer :col
      t.integer :player

      t.timestamps
    end
  end
end
