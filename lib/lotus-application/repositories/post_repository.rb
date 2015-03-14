class PostRepository
  include Lotus::Repository

  def self.last(n = 15)
    query.limit(n)
  end
end
