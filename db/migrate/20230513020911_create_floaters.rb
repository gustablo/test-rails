class CreateFloaters < ActiveRecord::Migration[7.0]
  def change
    create_table :floaters do |t|
      t.float :amount

      t.timestamps
    end
  end
end
