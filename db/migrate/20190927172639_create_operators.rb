class CreateOperators < ActiveRecord::Migration[6.0]
  def change
    create_table :operators do |t|
      t.integer :mnc
      t.string :name

      t.timestamps
    end
  end
end
