p "Users"
User.destroy_all

u1 = User.create(
  :first_name => "Shelley",
  :last_name => "Zhang",
  :password => "chicken",
  :email => "shelley@ga.co",
  :bio => "",
  :admin => true
)

u2 = User.create(
  :first_name => "Joel",
  :last_name => "Turnbull",
  :password => "chicken",
  :email => "joel@ga.co",
  :bio => ""
)

u3 = User.create(
  :first_name => "John",
  :last_name => "Coote",
  :password => "chicken",
  :email => "john@ga.co",
  :bio => ""
)

p "Categories"
Category.destroy_all

cat1 = Category.create(
  :name => "Depression",
)

cat2 = Category.create(
  :name => "General Anxiety",
)

cat3 = Category.create(
  :name => "Social Anxiety",
)

p "Posts"
Post.destroy_all

p1 = Post.create(
  :title => "Video Games That Can Treat Depression",
  :content => "edit this content",
  :category_id => cat1.id,
  :user_id => u1.id,
  :published => true
)

p2 = Post.create(
  :title => "The Social Benefit of Games",
  :content => "edit this content",
  :category_id => cat3.id,
  :user_id => u2.id,
  :published => true
)

p3 = Post.create(
  :title => "Games That Help With Anxiety",
  :content => "edit this content",
  :category_id => cat2.id,
  :user_id => u3.id,
  :published => true
)

p "Comments"
Comment.destroy_all

c1 = Comment.create(
  :body => "Wow this post is so informative",
  :post_id => p1.id,
  :user_id => u1.id
)

c2 = Comment.create(
  :body => "I can totally relate to this post",
  :post_id => p2.id,
  :user_id => u2.id
)

c3 = Comment.create(
  :body => "Can you please hire me?",
  :post_id => p3.id,
  :user_id => u3.id
)
