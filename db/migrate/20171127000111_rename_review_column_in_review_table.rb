class RenameReviewColumnInReviewTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :review, :written_review
  end
end
