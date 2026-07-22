class Movie < ActiveRecord::Base
  def self.create_with_title(title_string)
    Movie.create(title: title_string)
  end

  def self.first_movie
    Movie.first
  end

  def self.last_movie
    Movie.last
  end

  def self.movie_count
    Movie.count
  end

  def self.find_movie_with_id(movie_id)
    Movie.find(movie_id)
  end

  def self.find_movie_with_attributes(attributes_hash)
    Movie.find_by(attributes_hash)
  end

  def self.find_movies_after_2002
    Movie.where("release_date > ?", 2002)
  end

  def update_with_attributes(attributes_hash)
    self.update(attributes_hash)
  end

  def self.update_all_titles(new_title)
    Movie.update_all(title: new_title)
  end

  def self.delete_by_id(movie_id)
    movie = Movie.find(movie_id)
    movie.destroy
  end

  def self.delete_all_movies
    Movie.destroy_all
  end
end

