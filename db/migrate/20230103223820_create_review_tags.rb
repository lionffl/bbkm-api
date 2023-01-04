class CreateReviewTags < ActiveRecord::Migration[7.0]
  def change
    create_table :review_tags do |t|
      t.belongs_to :review
      t.belongs_to :tag

      t.timestamps
    end
  end
end
