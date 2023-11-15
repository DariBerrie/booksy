class RemoveUserResponseFromQuestions < ActiveRecord::Migration[7.1]
  def change
    remove_column :questions, :user_response
  end
end
