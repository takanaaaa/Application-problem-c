class RemoveImaToGroups < ActiveRecord::Migration[5.2]
  def up
    remove_column :groups, :ima
  end

  def down
    add_column  :groups, :image_id, :string
    add_column :groups, :owner_id, :integer
  end
end
