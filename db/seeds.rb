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
  :email => "zabrina@ga.co",
  :bio => ""
)

p "Posts"
Post.destroy_all

p1 = Post.create(
  :title => "Video Games That Can Treat Depression",
  :content => "edit this content",
  :category_id => 1,
  :user_id => 1,
  :published => true
)

p2 = Post.create(
  :title => "The Social Benefit of Games",
  :content => "edit this content",
  :category_id => 3,
  :user_id => 2,
  :published => true
)

p3 = Post.create(
  :title => "Games That Help With Anxiety",
  :content => "edit this content",
  :category_id => 2,
  :user_id => 3,
  :published => true
)

p "Comments"
Comment.destroy_all

c1 = Comment.create(
  :body => "Wow this post is so informative",
  :post_id => 1,
  :user_id => 1
)

c2 = Comment.create(
  :body => "I can totally relate to this post",
  :post_id => 2,
  :user_id => 2
)

c3 = Comment.create(
  :body => "Can you please hire me?",
  :post_id => 3,
  :user_id => 3
)

p "Categories"
Category.destroy_all

p1 = Category.create(
  :name => "Depression",
)

p2 = Category.create(
  :name => "Anxiety",
)

p3 = Category.create(
  :name => "Social",
)
