module Web::Controllers::Posts
  class Index
    include Web::Action
    expose :posts

    def call(params)
      @posts = PostRepository.last(15)
    end
  end
end
