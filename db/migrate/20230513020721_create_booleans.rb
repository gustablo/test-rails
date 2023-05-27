class CreateBooleans < ActiveRecord::Migration[7.0]
  def change
    create_table :booleans do |t|
      t.boolean :fixed

      t.timestamps
    end
  end
end
