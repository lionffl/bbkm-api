class CreateSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :systems do |t|
      t.string :name
      t.string :hostname_production
      t.string :hostname_homologa
      t.string :description
      t.boolean :active

      t.timestamps
    end
  end
end
