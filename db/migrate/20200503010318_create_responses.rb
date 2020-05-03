class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :body
      t.boolean :correct

      t.timestamps
    end
  end
end
