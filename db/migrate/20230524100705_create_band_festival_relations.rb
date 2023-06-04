class CreateBandFestivalRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :band_festival_relations do |t|
      t.references :band, null: false, foreign_key: true
      t.references :festival, null: false, foreign_key: true

      t.timestamps
    end
  end
end
