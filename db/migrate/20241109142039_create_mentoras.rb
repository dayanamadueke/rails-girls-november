class CreateMentoras < ActiveRecord::Migration[7.0]
  def change
    create_table :mentoras do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.text :habilidades

      t.timestamps
    end
  end
end
