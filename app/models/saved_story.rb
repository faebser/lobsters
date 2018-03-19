class SavedStory < ApplicationRecord
  belongs_to :user
  belongs_to :story

  validates_presence_of :user_id, :story_id

  def self.save_story_for_user(story_id, user_id)
    SavedStory.where(:user_id => user_id, :story_id =>
      story_id).first_or_initialize.save!
  end
end
