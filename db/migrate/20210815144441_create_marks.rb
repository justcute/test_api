class CreateMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :marks do |t|
      t.integer :value
      t.belongs_to :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
