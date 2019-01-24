class CreateTestos < ActiveRecord::Migration[5.2]
  def change
    create_table :testos do |t|
      t.string :title
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
