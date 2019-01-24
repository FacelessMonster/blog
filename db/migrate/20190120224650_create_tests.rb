class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :title
      t.string :questions
      t.text :answers

      t.timestamps
    end
  end
end
