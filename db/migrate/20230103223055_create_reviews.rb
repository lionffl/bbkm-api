class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :version
      t.string :title
      t.string :author
      t.string :environment
      t.string :summary
      t.binary :instructions

      t.timestamps
    end
  end
end
