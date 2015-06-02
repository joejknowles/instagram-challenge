class CreateSmiles < ActiveRecord::Migration
  def change
    create_table :smiles do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :photo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end