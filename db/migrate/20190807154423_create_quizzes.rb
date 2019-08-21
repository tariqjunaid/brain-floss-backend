class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.integer :points
      t.string :difficulty
      t.integer :player_id

      t.timestamps
    end
  end
end
