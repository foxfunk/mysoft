class CreateComentarioxes < ActiveRecord::Migration
  def change
    create_table :comentarioxes do |t|
      t.string :nombre
      t.string :titulo
      t.text :comentario

      t.timestamps
    end
  end
end
