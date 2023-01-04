class AddProcedureToReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :procedure, null: false, foreign_key: true
  end
end
