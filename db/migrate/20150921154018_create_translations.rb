class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :text
      t.string :target_language
      t.string :source_language
      t.string :target_text
      t.string :text_format
      t.string :uid
      t.string :callback_url
      t.string :tone
      t.string :instructions
      t.integer :status
      t.timestamps null: false
    end
  end
end
