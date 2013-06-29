class CreateGenresProjects < ActiveRecord::Migration
  def change
    create_table :genres_projects do |t|
      t.integer :genre_id, :project_id


    end
  end
end
