class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :cpf
      t.string :cidade
      t.string :estado
      t.date :nascimento

      t.timestamps
    end
  end
end
