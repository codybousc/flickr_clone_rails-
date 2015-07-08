class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.column :photo_url, :string
      t.column :description, :string
      t.column :date, :string
      t.column :location, :string
    end

    create_table :comments do |t|
      t.column :content, :string
      t.column :name, :string
      t.column :photo_id, :integer
    end
  end
end
