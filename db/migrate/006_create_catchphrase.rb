class CreateCatchphrase < ActiveRecord::Migration[5.2]
  def change
    create_table :catchphrase do |t| 
      t.string :catchprase 
    end
  end
end
