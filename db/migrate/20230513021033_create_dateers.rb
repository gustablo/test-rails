class CreateDateers < ActiveRecord::Migration[7.0]
  def change
    create_table :dateers do |t|
      t.date :data

      t.timestamps
    end
  end
end
