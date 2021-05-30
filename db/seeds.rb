# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Charity.destroy_all
User.destroy_all
Item.destroy_all
Bid.destroy_all
Purchase.destroy_all

c1 = Charity.create(name: 'Changing the Way the World Supports Refugees', address: 'Austin, TX', bio:'The refugee crisis is global, but most of it is invisible. Over 60% of the global refugee population resides in cities, underserved by an international system that has relied on camps to access those in need. The result: over 12 million urban refugees struggle to survive, facing precarious living conditions, discrimination, and a lack of access to basic services like healthcare, education, and livelihoods. As the refugee crisis continues to grow, so does the need for sustainable solutions.', donations:2500)
c2 = Charity.create(name: 'Heart to Heart International', address: 'Lenexa, KS', bio:'Heart to Heart International has shipped medical supplies to over 131 countries and given over $2 billion in aid to the less fortunate. To help curb the spread of COVID-19, it has created Stay Healthy kits that include standard hygiene products, but also gloves, masks, and bottles of hand sanitizer.', donations:1750)
c3 = Charity.create(name: 'Center for Reproductive Rights', address: 'New York, NY', bio:'This nonprofit envisions a world where every woman is treated as an equal and is free to make crucial decisions related to her own reproductive health. Its attorneys fight both nationally and internationally to give women access to birth control, safe abortions, and reproductive care.', donations:1150)


u1 = User.create(name:'Adri Torres', email:'adri@msn.com', username:'adri', password:'cats')
u2 = User.create(name:'Libby Torres', email:'libby@msn.com', username:'libby', password:'kittens')

i5 = Item.create(image:'https://1mte442b7ch33eneyf3vycuu-wpengine.netdna-ssl.com/wp-content/uploads/2019/03/Louisville-Brewery-Tour-transportation.jpg', name:"Local Brewery Tour", price:45, condition:'new', sold:true, city:'Austin', user_id: u2.id, charity_id: c1.id)
i6 = Item.create(image:'https://www.qgiv.com/blog/wp-content/uploads/2019/05/Auction-Item-Ideas-32.jpg', name:"Dedicated Tree", price:50, condition:'new', sold:false, city:'Austin', user_id: u2.id, charity_id: c1.id)
i7 = Item.create(image:'https://www.qgiv.com/blog/wp-content/uploads/2019/05/Auction-Item-Ideas-18.jpg', name:"Photography Class", price:65, condition:'new', sold:false, city:'Austin', user_id: u2.id, charity_id: c1.id)
i8 = Item.create(image:'https://www.qgiv.com/blog/wp-content/uploads/2019/05/Auction-Item-Ideas-41.jpg', name:"Personal Trainer", price:40, condition:'new', sold:false, city:'Austin', user_id: u2.id, charity_id: c1.id)
i1 = Item.create(image:'https://cdn-images.article.com/products/SKU2128/2890x1500/image46788.jpg', name:"Sofa", price:150, condition:'new', sold:false, city:'Austin', user_id: u1.id, charity_id: c1.id)
i2 = Item.create(image:'https://images2.imgix.net/p4dbimg/p20290/images/fus%20gntb%20dining%20table%20954452lowresj.jpg?trim=color&trimcolor=FFFFFF&trimtol=5&w=1024&h=768&fm=pjpg&auto=format', name:"Dining Table", price:90, condition:'used', sold:false, city:'Austin', user_id: u2.id, charity_id: c1.id)
i3 = Item.create(image:'https://cdn11.bigcommerce.com/s-8wy6p2/images/stencil/1000x1000/products/11196/110262/yamaha-yamaha-walnut-console-piano__84915.1611958300.jpg?c=2', name:"Piano", price:500, condition:'used', sold:false, city:'Austin', user_id: u1.id, charity_id: c1.id)
i4 = Item.create(image:'https://images.squarespace-cdn.com/content/v1/5645f8b4e4b0e040aef9c75d/1455128360646-UK87XQBJYQDF2LNEX70O/ke17ZwdGBToddI8pDm48kPp2JYJ8Y7QLR7IMbYiUgsxZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpwRmxrNnFT91PUkGTPzzGBxQTxoGNFaMJ-Sc5fnM9xVUp3N4A_-aIaiBFrBlb1bjUY/2%2Bvintage%2Btennis%2Brackets%2B9%2B1-4%2Bx%2B27+copy.png?format=2500w', name:"Vintage Tennis Rackets", price:40, condition:'used', sold:true, city:'Austin', user_id: u2.id, charity_id: c1.id)


b1 = Bid.create(amount: '160', item_id: i1.id, user_id: u2.id)
b2 = Bid.create(amount: '100', item_id: i2.id, user_id: u2.id)
b3 = Bid.create(amount: '520', item_id: i3.id, user_id: u1.id)
b4 = Bid.create(amount: '50', item_id: i4.id, user_id: u1.id)

p1 = Purchase.create(item_id: i1.id, bid_id: b1.id)
p2 = Purchase.create(item_id: i2.id, bid_id: b2.id)

