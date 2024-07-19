class CreatePoints < ActiveRecord::Migration[7.1]
  def change
    create_table :points do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.string :name
      t.string :region

      t.timestamps
    end
  end
end
