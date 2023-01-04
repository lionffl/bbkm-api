class CreateProcedures < ActiveRecord::Migration[7.0]
  def change
    create_table :procedures do |t|
      t.integer :review_interval
      t.boolean :active

      t.timestamps
    end
  end
end
