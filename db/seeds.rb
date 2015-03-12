require './config/environment'

PostRepository.clear

def random_char
  (('a'..'z').to_a + [' '])[rand(27)]
end

10000.times do
  title = (0..16).map { (('a'..'z').to_a + [' '])[rand(27)] }.join
  body = (0..1024).map { (('a'..'z').to_a + [' '])[rand(27)] }.join
  created_at = DateTime.now

  post = Post.new(title: title, body: body, created_at: created_at)
  PostRepository.create(post)
end
