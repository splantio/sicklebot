class EnumQuestionFormat < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE question_format AS ENUM ('multiple_choice', 'short_answer');
    SQL
    add_column :questions, :format, :question_format
    remove_column :questions, :type
  end
end
