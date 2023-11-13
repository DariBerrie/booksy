class AddLanguageToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :language, :string
  end
end
