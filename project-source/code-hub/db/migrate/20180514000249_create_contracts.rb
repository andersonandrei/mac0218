class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.belongs_to :programmer, index: true
      t.belongs_to :project, index: true
      t.string :contract_type
      t.string :contract_description
      t.string :contract_duration
      t.decimal :payment
      t.boolean :is_active
      t.string :status
      t.datetime :start_date

      t.timestamps
    end
  end
end
