class AddCatchPhraseToCharacters < ActiveRecord::Migration[5.1]
    def change
        add_column :characters, :catchpharse, :string
    end
end
