class Book
        attr_accessor :author
        attr_reader :title
        attr_writer :comments
        def initialize(author, title)
          @author = author
          @title = title
          @comments = []
        end
      end

      book = Book.new("Chuck Palahniuk", "Fight Club")
     book.comments.each { |comment| puts comment }