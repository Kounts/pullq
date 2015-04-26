class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.integer :order_number
      t.string 	:description
      t.timestamps
    end
    Question.create_translation_table! :text => :text
  end


  def down
    drop_table :questions
    Question.drop_translation_table!
  end
end
