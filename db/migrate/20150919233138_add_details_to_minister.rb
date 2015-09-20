class AddDetailsToMinister < ActiveRecord::Migration
  def change
    add_column :ministers, :name, :string
    add_column :ministers, :ministry, :string
    add_column :ministers, :bio, :text
  end
end
