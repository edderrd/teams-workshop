class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.float :salary
      t.references :team, index: true, foreign_key: true

      t.timestamps
    end
  end
end
