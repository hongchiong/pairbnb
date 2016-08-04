class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
