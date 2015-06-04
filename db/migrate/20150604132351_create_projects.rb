class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :youtube_url
      t.string :scratch_url

      t.timestamps null: false
    end
  end
end
