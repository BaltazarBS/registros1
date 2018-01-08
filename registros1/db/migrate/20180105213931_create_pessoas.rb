class CreatePessoas < ActiveRecord::Migration[5.1]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :idade, limit: 3
      t.string :sexo 
      t.timestamps
    end
  end
end
