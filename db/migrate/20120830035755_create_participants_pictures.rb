class CreateParticipantsPictures < ActiveRecord::Migration
 def change
    create_table :participants_pictures, :id => false do |t|
      t.integer :participant_id
      t.integer :picture_id
    end
  end
end
