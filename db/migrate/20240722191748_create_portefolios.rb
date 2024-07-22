class CreatePortefolios < ActiveRecord::Migration[7.1]
  def change
    create_table :portefolios do |t|
      t.string :name
      t.string :photo
      t.string :video
      t.string :presentation

      t.timestamps
    end
  end
end
