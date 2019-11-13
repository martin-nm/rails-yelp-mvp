class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :restaurant, foreign_key: true
      t.string :rating, inclusion: { in: %w(1 2 3 4 5),
        message: "Please give a rating between 1 and 5" } # inclusion ne marche pas dans ce fichier pour migration

      t.timestamps
    end
  end
end
