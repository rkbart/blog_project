class RemoveStringFromComments < ActiveRecord::Migration[8.0]
  def change
    remove_column :comments, :string, :string
  end
end
