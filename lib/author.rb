class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @title = []
  end

  def add_title(title)
    @title << title
    title.author = self
    @@post_count +=1
  end

  def post
    @post
  end

  def add_post_by_title(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    song_count += 1
  end

  def self.post_count
    @@post_count
  end

  def author_name
    self.author.name
  end

end
