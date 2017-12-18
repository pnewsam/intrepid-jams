class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :player_names
      t.integer :score
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
