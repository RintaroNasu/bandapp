class CreateBands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.text :name

      t.timestamps
    end
  end
end
