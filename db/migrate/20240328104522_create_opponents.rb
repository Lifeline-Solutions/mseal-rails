class CreateOpponents < ActiveRecord::Migration[7.0]
  def change
    create_table :opponents, id: :uuid do |t|
      t.date :match_date
      t.time :match_time
      t.string :venue
      t.string :tournament
      t.string :opponent
      t.integer :score_one
      t.integer :score_two
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
