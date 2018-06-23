class CreateRobots < ActiveRecord::Migration[5.1]
  def change
    create_table :robots do |t|
      t.string :ability
      t.string :name
      t.string :manufacturer
      t.string :version

      t.timestamps
    end
  end
end
