class Song

    attr_accessor :name
    attr_reader :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist.name if self.artist != nil
    end

    def artist=(artist)
        @artist = artist
        @artist.add_song(self)
    end

end