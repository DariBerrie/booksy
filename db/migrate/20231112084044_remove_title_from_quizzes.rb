class RemoveTitleFromQuizzes < ActiveRecord::Migration[7.1]
  def change
    remove_column :quizzes, :title
  end
end
