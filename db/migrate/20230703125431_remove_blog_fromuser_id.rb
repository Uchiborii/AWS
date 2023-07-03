class RemoveBlogFromuserId < ActiveRecord::Migration[6.0]
  def update
    remove_column :user_id, :string
  end
end
