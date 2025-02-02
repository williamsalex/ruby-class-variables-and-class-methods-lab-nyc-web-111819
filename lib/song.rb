class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        if @@genre_count.include? genre
            @@genre_count[genre] += 1
        else
            @@genre_count[genre] = 1
        end
        if @@artist_count.include? artist
            @@artist_count[artist] += 1
        else
            @@artist_count[artist] = 1
        end
    end
    def name
        @name
    end
    def artist
        @artist
    end
    def genre
        @genre
    end
    def self.count
        @@count
    end
    def self.artists
        @@artists = @@artists.uniq
    end
    def self.genres
        @@genres = @@genres.uniq
    end
    def self.genre_count
        @@genre_count
    end
    def self.artist_count
        @@artist_count
    end
end