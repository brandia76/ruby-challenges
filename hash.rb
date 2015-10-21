books = []
books.push({title: "Ulysses", author: "James Joyce"})
books.push({title: "The Great Gatsby", author: "F. Scott Fitzgerald"})
books.push({title: "Atlas Shrugged", author: "Ayn Rand"})

books.each do |book|
  puts "#{book[:title]} by #{book[:author]}"
end