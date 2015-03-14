module Web::Controllers::Posts
  class New
    include Web::Action

    def call(params)
      post = Post.new(title: params[:title],
        body: params[:body],
        created_at: DateTime.now)

      PostRepository.create(post)

      redirect_to '/posts'
    end
  end
end
