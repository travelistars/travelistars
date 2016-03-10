class EntryGenre < ActiveRecord::Base
  validates :entry_id, uniqueness: { scope: [:genre_id] }
end
