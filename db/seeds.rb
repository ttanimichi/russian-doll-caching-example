user1 = User.find_or_create_by!(name: 'やまだ') { |u| u.age = 42 }
user2 = User.find_or_create_by!(name: '鈴木')   { |u| u.age = 42 }

post1 = Post.find_or_create_by!(title: 'たいとる', user: user1) { |post| post.content = '本文だよ' }

p Comment.find_or_create_by!(content: 'こめんと１', user: user2, post: post1)
p Comment.find_or_create_by!(content: 'こめんと２', user: user1, post: post1)
p Comment.find_or_create_by!(content: 'こめんと３', user: user2, post: post1)
