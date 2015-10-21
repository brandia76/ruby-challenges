class Entertainment

  attr_writer :title, :publish_date
  attr_reader :title, :publish_date


end

class Book < Entertainment

  attr_writer :author
  attr_reader :author
   
end
 
class Movie < Entertainment
 
  attr_accessor :director
  
end

class Album < Entertainment
  
  attr_accessor :artist

end
 
 new_book = Book.new
 new_book.title = "In search of Time Lost"
 new_book.author = "Marcel Proust"
 new_book.publish_date = 1913
 puts "#{new_book.author} wrote #{new_book.title} in #{new_book.publish_date.to_s}"
 
 new_movie = Movie.new
 new_movie.title = "The Shawshank Redemption"
 new_movie.director = "Frank Darabont"
 new_movie.publish_date = 1994
 puts "#{new_movie.director} directed #{new_movie.title} and released in #{new_movie.publish_date}."
 
 new_album = Album.new
 new_album.title = "How To Save A Life"
 new_album.artist = "The Fray"
 new_album.publish_date = 2005
 puts "#{new_album.artist} released #{new_album.title} in #{new_album.publish_date}."
 
 puts new_book.inspect
 puts new_album.inspect
 puts new_movie.inspect
 
 #puts "Please enter information for 5 books"
 #books = Array.new
 #while books.size < 5 do
  #puts "Please enter"