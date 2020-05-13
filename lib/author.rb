class Author

  attr_accessor :name, :all

  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    Post.author = self
    @@post_count += 1
  end

  def posts 
      post.all.select {|post| post.author == self}
   end
  def add_post_by_title(title)
    post = post.new(title)
    @posts << post
    Post.author = self
    @@post_count += 1
  end

  def self.post_count
    post 
    post.all
    post.all.count
  end
end