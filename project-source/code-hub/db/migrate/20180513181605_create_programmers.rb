class CreateProgrammers < ActiveRecord::Migration[5.1]
  def change
    create_table :programmers do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.string :description
      t.string :language
      t.integer :expertise_lvl

      t.timestamps
    end
  end
end
