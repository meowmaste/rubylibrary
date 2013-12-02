class Library

	def initialize ()
		@shelves = []
	end	

	def addshelf(shelf)
		@shelf.push(shelf)
	end

	def removeshelf(shelf)
		@shelf.delete(shelf)
	end

	def shelvescount()
		@shelves.length
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
end

class Book 

	def enshelf (shelf)
		shelf.addbook(self)
	end	

	def unshelf (shelf)
		shelf.removebook(self)
	end	

end