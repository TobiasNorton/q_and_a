class CreateApiAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :api_answers do |t|
      t.text :body
      t.integer :rating
      t.belongs_to :question, foreign_key: true

      t.timestamps
    end
  end
end
