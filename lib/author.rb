class Author
  attr_accessor :name, :posts

  @@all_posts = []
  @@post_count = nil

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@all_posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
    @@all_posts << new_post
  end

  def self.post_count
    @@post_count = @@all_posts.count
  end

end