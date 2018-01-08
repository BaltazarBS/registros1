class AddColumnEnderecoPessoa < ActiveRecord::Migration[5.1]
  def change
    add_column :pessoas, :endereco, :string
  end
end
