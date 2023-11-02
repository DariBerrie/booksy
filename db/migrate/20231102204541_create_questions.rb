class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :question_text, null: false
      t.text :option_a
      t.text :option_b
      t.text :option_c
      t.text :option_d
      t.string :correct_response, null: false
      t.integer :point_value, null: false
      t.references :book, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
