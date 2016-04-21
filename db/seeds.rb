# This file should contain all the record creation
# needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).

if User.count == 0
  zack = User.create! name: 'Zack Gay' , email: "zack@mycloud.com", password:'forward', country_code: '+1', text_number: '2813411111'
  dommie = User.create! name: 'Dominoe Antonio', email: "dommie@swamp.com", password:'forward', country_code: '+1', text_number: '2813411121'
  billie = User.create! name: 'Billy Dee', email: "billie@twincity.com", password:'forward', country_code: '+1', text_number: '2813411131'
  jim = User.create! name: 'Jimbob Mohican', email: "jimbob@usgov.com", password:'forward', country_code: '+1', text_number: '2813411141'
  doug = User.create! name: 'Doug Drahem', email: "drahemde@me.com", password:'mypword', country_code: '+1', text_number: '2817723834'
end

if Post.count == 0
puts 'creating posts'
a = Post.create! title: 'Where is Seabass', postbody: 'At the d and q beer station on richmond', user_id: zack.id, photo: File.open("#{Rails.root}/app/assets/images/dq.JPG", "rb"), likes: 1, latitude:'30.27777', longitude:'-97.7434343'
b = Post.create! title: 'Cool black and white', postbody: 'This commemorates a dark event in the city past', user_id: dommie.id, photo: File.open("#{Rails.root}/app/assets/images/moody.JPG", "rb"), likes: 6, latitude:'32.6767676', longitude:'-96.8080808'
c = Post.create! title: 'Title, If the house is a rockin', postbody: '....dont bother knockin come on in.', user_id: doug.id, photo: File.open("#{Rails.root}/app/assets/images/stevie.JPG","rb"), likes: 3, latitude:'30.367584',longitude:'-103.6666'
d = Post.create! title: 'Title, A senorita and skull', postbody: 'South side of richmond, near montrose facing west', user_id: jim.id, photo: File.open("#{Rails.root}/app/assets/images/chulita.JPG","rb"), likes: 8, latitude: '29.765748', longitude:'-95.354637'
end

if Comment.count == 0
  puts 'creating comment'
Comment.create! remark: 'This pleases me, nice use of color.', user_id: billie.id, post_id: a.id
Comment.create! remark: 'Okay, this is colorful and kind of depressing', user_id: doug.id, post_id: d.id
Comment.create! remark: 'Stevie Ray on the side of rockin robin ', user_id: zack.id, post_id: c.id
end
