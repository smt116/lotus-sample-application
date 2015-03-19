require './config/environment'

# PostRepository.clear

def random_char
  (('a'..'z').to_a + [' ']).sample
end

def random_string(n)
  Array.new(n) { random_char }.join
end

1000.times do
  title = random_string(30)
  body = random_string(4096)
  created_at = DateTime.now

  post = Post.new(title: title, body: body, created_at: created_at)
  PostRepository.create(post)
end
