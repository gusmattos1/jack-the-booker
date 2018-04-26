# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(first_name: "Jack", last_name: "Pirat", password: "123")

restaurant=Restaurant.create!(user_id:user.id, name: "NewRestaurant", capacity:100)

10.times do
  Review.create!(user_id:user.id, restaurant_id:restaurant.id, review: "this is a great place" )
end
Reservation.create!(user_id:user.id, restaurant_id:restaurant.id,)


Restaurant.create!(user_id: user.id, name: "McDonald's", address: "1 Front St.", capacity: 150, cost: 1, summary: "Burger joint", menu: "Big Mac, Cheeseburger", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "https://cdn.torontolife.com/wp-content/uploads/2015/09/toronto-restaurant-alo-05-1200x0-c-default.jpg")

Restaurant.create!(user_id: user.id, name: "Drake 150", address: "18 Beaver St.", capacity: 150, cost: 3, summary: "Burger joint", menu: "Burgers", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "https://media.blogto.com/listings/f593-20130930-drake150-590-23.jpg?cmd=resize_then_crop&quality=70&w=2048&height=1365")

Restaurant.create!(user_id: user.id, name: "Frings", address: "1779 Peter St.", capacity: 50, cost: 5, summary: "Burger joint", menu: "Burgers", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "https://media.blogto.com/listings/f593-20130930-drake150-590-23.jpg?cmd=resize_then_crop&quality=70&w=2048&height=1365")

Restaurant.create!(user_id: user.id, name: "Collette", address: "1 Big St.", capacity: 20, cost: 2, summary: "French joint", menu: "French Food", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "https://notablelife.com/media/2016/05/colette-toronto-restaurant-04.jpg")

Restaurant.create!(user_id: user.id, name: "Canoe", address: "1 King St W.", capacity: 100, cost: 5, summary: "Canadian joint", menu: "Canadian Food", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "https://canadas100best.com/wp-content/uploads/2015/06/6canoe.jpg")


Restaurant.create!(user_id: user.id, name: "Intercontinental", address: "274 Oak St ", capacity: 200, cost:4 , summary: "Hotel Resto", menu: "Fusion Food", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "https://canadas100best.com/wp-content/uploads/2015/06/6canoe.jpg")


Restaurant.create!(user_id: user.id, name: "Bar Isabel", address: "774 College St ", capacity: 40, cost: 4, summary: "Tapas Resto", menu: "Tapas", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "https://3di6zv3beqwj3om56f47wlza-wpengine.netdna-ssl.com/wp-content/uploads/2016/02/bar-isabel2.jpg")

Restaurant.create!(user_id: user.id, name: "Surprise!", address: "774 College St ", capacity: 88, cost: 3, summary: "Resto?", menu: "Mystery", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "http://www.tastesbyjade.com/wp-content/uploads/2017/08/IMG_7633-819x1024.jpg")

Restaurant.create!(user_id: user.id, name: "Libretto", address: "774 College St ", capacity: 90, cost: 3, summary: "Pizza joint", menu: "Pizza", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "https://www.thestar.com/content/dam/thestar/life/food_wine/2010/04/02/breakfast_pizza_is_ready_for_its_toronto_moment/librettoagostinojpg.jpeg.size.custom.crop.1086x725.jpg")

Restaurant.create!(user_id: user.id, name: "Kinton", address: "400 Queen St W ", capacity: 40, cost: 2, summary: "Ramen joint", menu: "Ramen", opening_hour: DateTime.now, closing_hour: DateTime.now + 8.hours, picture: "https://i.ytimg.com/vi/qpGS5R_s51A/maxresdefault.jpg")
