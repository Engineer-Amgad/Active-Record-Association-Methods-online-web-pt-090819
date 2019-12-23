require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
<<<<<<< HEAD
 
  def drake_made_this
    
    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake 
    
=======
  # def drake_made_this
    # drake = Artist.where(name: "Drake")
    #binding pry
    # if drake 
    #   self.artist = drake 
    # else
      # self.build_artist(name: "Drake")
      # self.save
    # end
>>>>>>> effa89c170a3f71bfc6db1d4322e7d41f5d62288
  end
end