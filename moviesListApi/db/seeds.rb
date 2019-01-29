#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.email = 'german_sjj4@hotmail.com'
user.password = '25061996sayan5'
user.password_confirmation = '25061996sayan5'
user.phone = '6672726823'
user.role = 1
user.save!

user2 = User.new
user2.email = 'german2506.gs@gmail.com'
user2.password = '25061996sayan5'
user2.password_confirmation = '25061996sayan5'
user2.phone = '6672726823'
user2.save!

M = Movie.create(title: 'Dragon ball Z', cover: 'https://images-na.ssl-images-amazon.com/images/I/81PupZ4IKgL._SY445_.jpg', description: 'Following the events of the Dragon Ball Z', size: 700 )
M1 = Movie.create(title: 'Bridge to terabithia', cover: 'https://images-na.ssl-images-amazon.com/images/I/81PupZ4IKgL._SY445_.jpg', description: 'Following the events of the Dragon Ball Z', size: 1024 )
M2 = Movie.create(title: 'Dragon ball Ressurection', cover: 'https://images-na.ssl-images-amazon.com/images/I/81PupZ4IKgL._SY445_.jpg', description: 'Following the events of the Dragon Ball Z', size: 1480 )
M3 = Movie.create(title: 'Darksides', cover: 'https://images-na.ssl-images-amazon.com/images/I/81PupZ4IKgL._SY445_.jpg', description: 'Following the events of the Dragon Ball Z', size: 3290 )
M4 = Movie.create(title: 'Avatar', cover: 'https://images-na.ssl-images-amazon.com/images/I/81PupZ4IKgL._SY445_.jpg', description: 'Following the events of the Dragon Ball Z', size: 700 )
M5 = Movie.create(title: 'The seven deadly sins', cover: 'https://images-na.ssl-images-amazon.com/images/I/81PupZ4IKgL._SY445_.jpg', description: 'Following the events of the Dragon Ball Z', size: 700 )
M6 = Movie.create(title: 'Annabelle', cover: 'https://images-na.ssl-images-amazon.com/images/I/81PupZ4IKgL._SY445_.jpg', description: 'Following the events of the Dragon Ball Z', size: 700 )
M7 = Movie.create(title: 'Kimi no na wa', cover: 'https://images-na.ssl-images-amazon.com/images/I/81PupZ4IKgL._SY445_.jpg', description: 'Following the events of the Dragon Ball Z', size: 700 )

O1 = Order.create(user: user2)
O2 = Order.create(user: user2)
O3 = Order.create(user: user)

OrderDetail.create(order: O1 ,movie: M1)
OrderDetail.create(order: O1 ,movie: M2)
OrderDetail.create(order: O1 ,movie: M3)
OrderDetail.create(order: O1 ,movie: M4)
OrderDetail.create(order: O1 ,movie: M5)
OrderDetail.create(order: O1 ,movie: M6)
OrderDetail.create(order: O1 ,movie: M7)

OrderDetail.create(order: O2 ,movie: M2)
OrderDetail.create(order: O2 ,movie: M4)
OrderDetail.create(order: O2 ,movie: M7)

OrderDetail.create(order: O3 ,movie: M1)
OrderDetail.create(order: O3 ,movie: M2)
OrderDetail.create(order: O3 ,movie: M3)
OrderDetail.create(order: O3 ,movie: M5)
OrderDetail.create(order: O3 ,movie: M7)