class AddStackToPortefolios < ActiveRecord::Migration[7.1]
  def change
    add_column :portefolios, :stack, :string
  end
end
