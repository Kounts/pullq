class CreateChoices < ActiveRecord::Migration
  def up
    create_table :choices do |t|
      t.references :question
      t.timestamps
    end
    Choice.create_translation_table! :text => :text
  end


  def down
    drop_table :choices
    Choice.drop_translation_table!
  end
end
