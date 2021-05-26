class Artist

    attr_accessor :name
    attr_reader :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self if song.artist != self
        @songs << song
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        self.add_song(new_song)
    end

    def self.song_count
        Song.all.length()
    end

end