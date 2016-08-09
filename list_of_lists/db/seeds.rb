User.destroy_all
List.destroy_all
Book.destroy_all
Follower.destroy_all
ListUser.destroy_all
Movie.destroy_all
Place.destroy_all
Rando.destroy_all
Song.destroy_all

User1 = User.create username: "Gaber", email: "Gabe@gabe.gabe", first_name: "Gabe", last_name: "Abe", bio: "My name is Abe but people call me Gabe which I don't mind because I believe in God and God loves all his children regardless of name.", password: "hi", img_url: "http://s3.india.com/wp-content/uploads/2014/12/god.jpg"
User2 = User.create username: "MarkyMark", email: "Mark@MarkyMcMarc", first_name: "Mark", last_name: "Johnson", bio: "My name is Mark and I run a company that has contributed to the demise of this fine society, bestowed upon us by our forefathers(kin folk).", password: "hi", img_url: "https://lovecraftzine.files.wordpress.com/2014/04/2-lovecraft-occultist.jpg"
User3 = User.create username: "James", email: "SirJames@Jamie.j", first_name: "Jamie", last_name: "Scovern", bio: "Some people say I'm a hipster but I think they are just judging me by my super cool red bike. I like to write code especially with Holly; she is my favorite person in the world.", password: "hi", img_url: "http://www.hipstergirls.net/media/2012/09/Hipster-Bike-300x211.jpg"

List1 = List.create title: "Favorite Books", description: "These books are really fantastic.", img_url: "http://www.steinbeck.org/assets/images/assets/617/large_east_of_EDEN_cover.jpg", list_type: "book"
List2 = List.create title: "Movies you don't want to watch with your mom", description: "These movies have sex or drugs etc.", img_url: "http://www.steinbeck.org/assets/images/assets/617/large_east_of_EDEN_cover.jpg", list_type: "movie"
List3 = List.create title: "Place you don't want to go with your mom", description: "These places are good for finding drugs or other illicit substances but not for bonding with mom.", img_url: "http://cdn.thisiswhyimbroke.com/images/lego-strip-club-set1-640x533.jpg", list_type: "place"
List4 = List.create title: "When Kyle was searching for porn he found this:", description: "'I thought I wanted to look at naked women but really I wanted to look at puppies'", img_url: "http://cdn1-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-2.jpg", list_type: "rando"
List5 = List.create title: "Songs Kyle listens to with Mom", description: "When mom and I go to Home Depot on Sunday we like to listen to Joni Mitchell and... ", img_url: "http://static.rogerebert.com/uploads/review/primary_image/reviews/thelma-and-louise-1991/hero_EB19910101REVIEWS40823002AR.jpg", list_type: "song"

Book1 = Book.create title: "East of Eden", author: "John Steinbeck", description: "A coming of age story at any age", img_url: "http://www.steinbeck.org/assets/images/assets/617/large_east_of_EDEN_cover.jpg"
Book2 = Book.create title: "Anna Karenina", author: "Leo Tolstoy", description: "She kills herself but it's complicated", img_url: "https://frisbeebookjournal.files.wordpress.com/2010/05/annakerinaml.jpg"
# This file should contain all the record creation needed to seed the database with its default values.

# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
