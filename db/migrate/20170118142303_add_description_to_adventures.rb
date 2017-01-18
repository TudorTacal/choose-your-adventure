class AddDescriptionToAdventures < ActiveRecord::Migration[5.0]
  def change
    add_column :adventures, :description, :text
  end
end
