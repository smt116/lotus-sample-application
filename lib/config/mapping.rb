collection :posts do
  entity     Post
  repository PostRepository

  attribute :id,          Integer
  attribute :title,       String
  attribute :body,        String
  attribute :created_at,  DateTime
end
