class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      
      t.string :name
      t.text :introduction
      t.string :ima
      t.references :group_user, foreign_key: true

      t.timestamps
    end
  end
end
