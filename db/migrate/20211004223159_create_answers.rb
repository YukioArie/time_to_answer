class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :description
      t.references :question, null: false, foreign_key: true
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
