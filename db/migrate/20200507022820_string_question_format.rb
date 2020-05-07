class StringQuestionFormat < ActiveRecord::Migration[6.0]
  def up
    change_table :questions do |t|
      t.change :format, :string
    end

    execute <<-SQL
      DROP TYPE question_format;
    SQL
  end

  def down
    execute <<-SQL
      CREATE TYPE question_format AS ENUM ('multiple_choice', 'short_answer');
    SQL
    change_table :questions do |t|
      t.change :format, :question_format
    end
  end
end
