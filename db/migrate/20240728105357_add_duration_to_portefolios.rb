class AddDurationToPortefolios < ActiveRecord::Migration[7.1]
  def change
    add_column :portefolios, :duration, :string
  end
end
