# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def create_users
  User.create(id: 1, username: "John Doe", email: "johndoe@mail.com", password: "password")
  User.create(id: 2, username: "Jane Doe", email: "janedoe@mail.com", password: "password")
  User.create(id: 3, username: "Robert Barret", email: "robertbarret@mail.com", password: "password")
  User.create(id: 4, username: "Jack Khan", email: "jackhkan@mail.com", password: "password")
  User.create(id: 5, username: "Henry Simpson", email: "henrysimpson@mail.com", password: "password")
  User.create(id: 6, username: "Hayden Harper", email: "haydenharper@mail.com", password: "password")
  User.create(id: 7, username: "Jack Kennedy", email: "jackkennedy@mail.com", password: "password")
  User.create(id: 8, username: "Memphis Valenzuela", email: "mempisvelzuela@mail.com", password: "password")
  User.create(id: 9, username: "Camdyn Daniel", email: "camdydaniel@mail.com", password: "password")
  User.create(id: 10, username: "Braylon Wiggins", email: "braylonwiggins@mail.com", password: "password")
  User.create(id: 11, username: "Micah Hayes", email: "micahhayes@mail.com", password: "password")
  User.create(id: 12, username: "Darwin Aguilar", email: "darwinaguliar@mail.com", password: "password")
  User.create(id: 13, username: "Anthony Cook", email: "anthonycook@mail.com", password: "password")
  User.create(id: 14, username: "Zaid Davidsons", email: "zaiddavidson@mail.com", password: "password")
  User.create(id: 15, username: "Alfie Fisher", email: "alfiefisher@mail.com", password: "password")
  User.create(id: 16, username: "Adan Head", email: "adanhead@mail.com", password: "password")
  User.create(id: 17, username: "Zachary Chapman", email: "zacharychapman@mail.com", password: "password")
  User.create(id: 18, username: "William Chapman", email: "williamchapman@mail.com", password: "password")
  User.create(id: 19, username: "Tyler Pearce", email: "tylerpearce@mail.com", password: "password")
  User.create(id: 20, username: "Tommy Sharp", email: "tomysharp@mail.com", password: "password")
  User.create(id: 21, username: "Emily Wilson", email: "emilywilson@mail.com", password: "password")
  User.create(id: 22, username: "Alexander Garcia", email: "alexandergarcia@mail.com", password: "password")
  User.create(id: 23, username: "Olivia Thompson", email: "oliviathompson@mail.com", password: "password")
  User.create(id: 24, username: "William Wright", email: "williamwright@mail.com", password: "password")
  User.create(id: 25, username: "Sophia Scott", email: "sophiascott@mail.com", password: "password")
  User.create(id: 26, username: "James Bailey", email: "jamesbailey@mail.com", password: "password")
  User.create(id: 27, username: "Isabella Lopez", email: "isabellalopez@mail.com", password: "password")
  User.create(id: 28, username: "Benjamin Hill", email: "benjaminhill@mail.com", password: "password")
  User.create(id: 29, username: "Ava Mitchell", email: "avamitchell@mail.com", password: "password")
  User.create(id: 30, username: "Mason Young", email: "masonyoung@mail.com", password: "password")
  User.create(id: 31, username: "Charlotte Lee", email: "charlottelee@mail.com", password: "password")
  User.create(id: 32, username: "Elijah Green", email: "elijahgreen@mail.com", password: "password")
  User.create(id: 33, username: "Amelia Carter", email: "ameliacarter@mail.com", password: "password")
  User.create(id: 34, username: "Daniel Evans", email: "danielevans@mail.com", password: "password")
  User.create(id: 35, username: "Mia Martinez", email: "miamartinez@mail.com", password: "password")
  User.create(id: 36, username: "Liam Perez", email: "liamperez@mail.com", password: "password")
  User.create(id: 37, username: "Harper Hall", email: "harperhall@mail.com", password: "password")
  User.create(id: 38, username: "Evelyn Ramirez", email: "evelynramirez@mail.com", password: "password")
  User.create(id: 39, username: "Sebastian Collins", email: "sebastiancollins@mail.com", password: "password")
  User.create(id: 40, username: "Victoria Reed", email: "victoriareed@mail.com", password: "password")
end

def create_posts
  ids = (1..30).to_a
  ids.each do |id|
    rand(1..5).times do
      generate_post(id)
    end
  end
end

def generate_post(id)
  post = Post.new(author_id: id, datetime: generate_random_date, body: generate_random_text)
  post.save
end

def generate_random_date
  rand(3.days).seconds.ago
end

@lorem_ipsum_text = [
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lobortis tincidunt nulla, quis mollis nibh sodales non. Sed eget tempus eros, at eleifend sem. Sed suscipit semper varius.",
  "Quisque luctus feugiat tempus. Pellentesque mollis et odio nec aliquet. Aliquam in condimentum lectus. Curabitur tellus dui, vestibulum at elit sit amet, fermentum consequat purus. Vivamus quis lacinia tortor.",
  "Donec ut viverra nunc. Duis suscipit vel quam quis rhoncus.",
  "Praesent gravida arcu nec sapien pellentesque posuere. Nunc consectetur tempus pharetra. Aliquam vulputate ante non justo vulputate, et bibendum lacus malesuada.",
  "In ante tellus, ultrices in gravida sagittis, convallis in quam. Suspendisse semper quis metus ac viverra. Nulla lobortis viverra est non malesuada.",
  "Nunc quis eleifend felis. Proin fringilla, arcu commodo vehicula viverra, lorem erat imperdiet ligula, id egestas diam dolor vel mauris.",
  "Nullam ultrices dapibus tempor. In iaculis mi rhoncus tortor malesuada aliquet. Cras velit mauris, volutpat id sagittis at, porttitor sed justo.",
  "Vivamus molestie tortor ut magna maximus congue. Vivamus quis posuere lectus. Nulla non ornare ipsum, vel egestas massa.",
  "Nam ultrices, nibh at venenatis convallis, erat orci blandit lorem, quis lacinia orci sem a nisi. Etiam est ex, mattis in pretium id, blandit vitae enim.",
  "Mauris sed sollicitudin sapien, non auctor nulla. Fusce a nibh euismod, lobortis ante ut, laoreet dui. Quisque vitae sem rhoncus, vehicula nunc id, commodo mi.",
  "Sed mattis efficitur finibus. Sed efficitur fringilla nulla, id iaculis tellus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
  "Nunc vulputate eros massa, non rhoncus ipsum accumsan non. Donec metus elit, eleifend ultricies eros nec, faucibus interdum nisi.",
  "Morbi est sapien, dapibus eu tincidunt vitae, suscipit et leo. Aliquam non turpis nisl. Proin et lobortis nisl. Vestibulum pharetra ullamcorper finibus.",
  "Etiam quam justo, rutrum eu finibus nec, rhoncus eu ante. Fusce venenatis dictum suscipit. Quisque tincidunt eros urna, at maximus magna auctor ut.",
  "Maecenas at sagittis quam, finibus viverra nisl. Curabitur id quam vitae lorem pharetra mattis nec eu erat. Curabitur dolor nisi, elementum eu ipsum non, ultricies aliquam nunc.",
  "Quisque eget ipsum mollis, viverra nisi nec, vestibulum nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  "Vestibulum vestibulum aliquet quam, ut consequat leo feugiat nec. Proin accumsan sem non rhoncus dignissim. Vivamus luctus gravida dolor, quis tristique ex convallis a.",
  "Aliquam convallis enim eu ante fringilla vestibulum eu tincidunt risus. Maecenas venenatis leo vel mi malesuada, quis vulputate urna hendrerit.",
  "Vestibulum auctor eget odio vitae imperdiet. Maecenas quis eleifend neque, et maximus elit. Cras quam augue, fermentum sagittis arcu pellentesque, tincidunt ullamcorper nisi.",
  "Phasellus orci magna, laoreet at erat ut, fermentum ullamcorper quam. Morbi pharetra, tellus vel ornare dictum, justo lorem malesuada quam, vel molestie justo enim id ante.",
  "Vivamus ipsum magna, lobortis et aliquam a, posuere id velit. Quisque eget nibh eu tortor luctus vestibulum sit amet in erat. Praesent elit purus, aliquam ultricies ante pellentesque, semper varius ipsum.",
  "Nunc sagittis hendrerit vulputate. Phasellus vehicula justo sed quam finibus efficitur. Curabitur nec ultricies felis, nec fringilla lacus. Proin posuere massa sed justo aliquet, ut tempus sem varius.",
  "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo arcu sit amet fermentum blandit.",
  "In porttitor, libero in eleifend pharetra, tortor massa faucibus dui, sodales feugiat felis ante vitae eros. Morbi faucibus pharetra sem quis molestie.",
  "In ut viverra neque. Integer at elit tempor libero dapibus rutrum. Sed sem justo, pharetra dapibus viverra eget, aliquet nec orci.",
  "Suspendisse nec massa laoreet, posuere purus vel, sodales massa. Fusce nec libero pellentesque, ullamcorper lectus nec, tempor purus.",
  "Nullam eros est, vestibulum eget ex id, finibus condimentum magna. Suspendisse vitae convallis odio. Sed tristique pretium diam, sit amet varius magna mollis vel.",
  "Etiam at orci eu lectus pellentesque iaculis ac posuere risus. Vestibulum tempus congue tincidunt. Aenean tincidunt, quam sed malesuada commodo, mauris ante gravida felis, eu sodales diam odio sit amet enim.",
  "Donec cursus neque vitae risus mollis, a cursus arcu lobortis. Donec tincidunt mauris eu ex consequat, eget congue lectus rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  "Fusce venenatis urna et metus laoreet vehicula. Vivamus urna augue, venenatis eu sapien vitae, facilisis consectetur nisi. Maecenas est magna, commodo quis sodales a, tempus sit amet ipsum.",
  "Donec lacinia molestie nibh, eget interdum mi. Donec vestibulum tempus leo sed aliquam.",
  "Praesent lacinia purus vitae condimentum congue. Quisque eget ullamcorper est, nec feugiat est. Suspendisse accumsan purus a semper consequat.",
  "Vivamus sed feugiat mi. Proin eu nibh viverra, ornare felis id, interdum velit. Praesent nulla odio, feugiat nec pellentesque sit amet, accumsan eu sem.",
  "Aliquam erat volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam risus eros, elementum in tortor vel, suscipit suscipit purus.",
  "Aenean dignissim leo ex, vitae dignissim ante fringilla ut. Suspendisse tempus, metus ac euismod elementum, elit nunc eleifend est, eget egestas diam nunc non tellus.",
  "Duis elit dolor, cursus sit amet tincidunt ac, convallis posuere orci. Praesent pellentesque lectus tortor, sed lobortis tortor dignissim ut. Vivamus et dapibus nisl.",
  "Phasellus dictum, urna eu dignissim gravida, massa nisi malesuada augue, nec sodales arcu nunc sit amet lorem.",
  "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque et condimentum nisl, et blandit ligula.",
  "Nam commodo dictum mollis. Suspendisse mollis vel turpis eu iaculis.",
  "Etiam rhoncus ligula magna, et venenatis lorem placerat nec. Vestibulum vehicula ante nec erat vulputate, sed fringilla urna sagittis. Pellentesque in dapibus lectus.",
  "Mauris blandit erat non augue eleifend, sed ultricies mauris varius.",
  "Aliquam enim tellus, sollicitudin eu convallis ut, blandit in orci.",
  "Sed quis ultricies ante. Vivamus iaculis, velit placerat consectetur efficitur, arcu sem sodales mi, in finibus arcu ligula nec libero.",
  "Etiam vulputate dui erat, in faucibus nulla posuere ac.",
  "Nam luctus neque nec tortor ullamcorper, sed accumsan turpis vestibulum.",
  "Morbi id libero sollicitudin, lobortis nibh sed, tempor orci.",
  "Sed ut sem sed tortor luctus vulputate at non enim.",
  "Nulla venenatis, lacus a tempus gravida, nulla risus sagittis sem, nec fermentum magna tortor suscipit sem.",
  "Duis sit amet odio dui. Quisque ut ex neque.",
  "Nulla lacinia dolor a lacus elementum, ac lobortis lacus pulvinar.",
  "Maecenas tincidunt euismod dui, id aliquet est consectetur ut. Proin tempus lobortis tortor, quis congue lorem ornare vel.",
  "Mauris faucibus ligula nec nulla tincidunt, eget faucibus nibh tincidunt.",
  "Quisque a libero luctus, posuere est sed, gravida lorem.",
  "Phasellus vitae consequat ligula, at sodales mauris.",
  "Praesent molestie, nulla eu pellentesque fringilla, ligula sem varius nisi, sed lobortis risus urna at erat.",
  "Etiam massa ligula, feugiat eget augue sed, mattis bibendum purus.",
  "Proin finibus tortor ac sem semper, non finibus purus semper.",
  "Nulla quis mauris sit amet lectus lobortis euismod quis ut sapien.",
  "Cras consequat augue a mattis viverra. Maecenas congue justo non sem lacinia, in facilisis ligula sagittis.",
  "Cras commodo scelerisque consectetur. Nullam ornare auctor lacus, et auctor nisl bibendum id.",
  "Nunc mattis, justo sed rutrum porttitor, tortor lectus tempus massa, eget mollis nunc sem ut nisl.",
  "Cras aliquet pulvinar sagittis. Fusce porta nunc sed dolor tempus malesuada.",
  "Ut ultrices tempor arcu ut rhoncus.",
  "Duis quis diam vel dui tempus mattis. Mauris dictum eget ipsum at gravida.",
  "Fusce ornare imperdiet est, quis sagittis sapien maximus a.",
  "Suspendisse eu laoreet nisi. Maecenas volutpat odio id odio consequat dictum.",
  "Sed convallis, tellus sit amet aliquam suscipit, nulla ante consequat nibh, in posuere nisi turpis eu velit.",
  "Sed quis dictum sem. Cras sollicitudin ultricies ante eu hendrerit.",
  "Aliquam erat volutpat. Fusce varius, justo quis posuere egestas, purus lacus mattis ante, at blandit lacus metus id lorem."
]

def generate_random_text
    @lorem_ipsum_text.sample
end

def generate_likes_for_posts
  posts = Post.all
  posts.each do |post|
    (1..40).to_a.sample(rand(0..25)).each do |id|
      create_like(post.id, id)
    end
  end
end

def create_like(post_id, user_id)
  Like.create(post_id: post_id, user_id: user_id)
end

def generate_comments_for_posts
  posts = Post.all
  posts.each do |post|
    rand(0..6).times do
      create_comment(post.id)
    end
  end
end

def create_comment(post_id)
  Comment.create(body: generate_random_text, post_id: post_id, author_id: rand(1..40))
end

def create_friendships
  users = User.all
  users.each do |user|
    (1..40).to_a.sample(rand(0..15)).each do |friend|
      next if user.id == friend || Friendship.where(user_id: user.id).where(friend_id: friend).any?
      Friendship.create(user_id: user.id, friend_id: friend, status: "friends")
      Friendship.create(user_id: friend, friend_id: user.id, status: "friends")
    end
  end
end

create_users
create_posts
generate_likes_for_posts
generate_comments_for_posts
create_friendships

ActiveRecord::Base.connection.reset_pk_sequence!('users')

