class CreateMultipleChoiceOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :multiple_choice_options do |t|
      t.integer :question_id
      t.string :option

      t.timestamps
    end
  end
end
