class CreateComentariosAdmins < ActiveRecord::Migration
  def change
    create_table :comentarios_admins do |t|
      t.string :nombre
      t.string :titulo
      t.text :comentario

      t.timestamps
    end
  end
end
