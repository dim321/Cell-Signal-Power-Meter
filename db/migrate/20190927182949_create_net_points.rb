class CreateNetPoints < ActiveRecord::Migration[6.0]
  def change
    create_table :net_points do |t|
      t.float :latitude
      t.float :longitude
      t.integer :dbm
      t.integer :asu
      t.integer :mcc
      t.references :operator, null: false, foreign_key: true
      t.integer :mnc
      t.string :net_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
