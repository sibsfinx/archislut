class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :user, index: true
      t.string :image
      t.string :author
      t.text :description

      t.timestamps
    end
  end
end
