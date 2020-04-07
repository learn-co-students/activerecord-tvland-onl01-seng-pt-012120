class AddCatchphraseToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :catchphrase, :character, :string
  end
end
