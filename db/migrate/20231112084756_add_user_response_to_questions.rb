class AddUserResponseToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :questions, :user_response, :string
  end
end
