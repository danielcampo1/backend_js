class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.belongs_to :category

      t.timestamps
    end
  end
end
