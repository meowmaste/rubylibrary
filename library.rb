class Library

	def initialize ()
		@shelves = []
	end	

	def addshelf(shelf)
		@shelves.push(shelf)
	end

	def removeshelf(shelf)
		@shelves.delete(shelf)
	end

	def shelvescount()
		@shelves.length
	end

	def reportbooks
		@shelves.each do |shelf|
			shelf.books each do |book|
              book.title
			end
		end
	end
end

class Shelf

	def initialize ()
		@books = []
	end
	
	def addbook(book)
		@books.push(book)
	end	

	def removebook(book)
		@books.delete(book)
	end

	def books 
		@books
	end
end

class Book 

	def initialize (title)
		@title = title
	end 

	def title 
		@title 
	end

	def enshelf (shelf)
		shelf.addbook(self)
	end	

	def unshelf (shelf)
		shelf.removebook(self)
	end	

end

b1 = Book.new("Ender's Game")
b2 = Book.new("Game of Thrones")
b3 = Book.new("The Golden Compass")

lib = Library.new

s1 = Shelf.new
s2 = Shelf.new 
s3 = Shelf.new

b1.enshelf(s1)
b2.enshelf(s2)
b3.enshelf(s2)

lib.addshelf(s1)
lib.addshelf(s2)
lib.addshelf(s3)

lib.removeshelf(s3)

puts lib.shelvescount

puts lib.reportbooks

b1.unshelf(s1)

lib.reportbooks

puts "done"

