class Movie < ApplicationRecord
  validates :title, :presence => true

  def self.next(movie)
    where('id < ?', movie.id).last
  end

  def self.previous(movie)
    where('id > ?', movie.id).first
  end
end
