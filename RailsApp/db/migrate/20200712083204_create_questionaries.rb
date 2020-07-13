class CreateQuestionaries < ActiveRecord::Migration[6.0]
  def change
    create_table :questionaries do |t|
      t.text :title
      t.text :description
      t.datetime :deadline

      t.timestamps
    end
  end
end
