class CreateApiQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :api_questions do |t|
      t.string :header
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
