class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :description
      t.string :duration
      t.string :language

      t.timestamps
    end
  end
end
