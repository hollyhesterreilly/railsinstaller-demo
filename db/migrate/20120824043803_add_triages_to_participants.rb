class AddTriagesToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :triages, :integer

  end
end
