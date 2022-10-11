class AddCrewToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_reference :characters, :crew, foreign_key: true
  end
end
