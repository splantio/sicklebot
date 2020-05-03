class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :body
      t.string :answer
      t.integer :author_id
      t.integer :type
      t.date :date_last_asked

      t.timestamps
    end
  end
end
