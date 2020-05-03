class ChangeQuestionsDateLastAsked < ActiveRecord::Migration[6.0]
  def up
    change_table :questions do |t|
      t.change :date_last_asked, :datetime
    end
  end

  def down
    change_table :questions do |t|
      t.change :date_last_asked, :date
    end
  end
end
