class Post

    attr_accessor :title
    attr_reader :author
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author.name if self.author != nil
    end

    def author=(author)
        @author = author
        @author.add_post(self)
    end

end