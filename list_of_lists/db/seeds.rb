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

Book1 = Book.create! title: "East of Eden", author: "John Steinbeck", description: "A coming of age story at any age", img_url: "http://www.steinbeck.org/assets/images/assets/617/large_east_of_EDEN_cover.jpg", list: List1
Book2 = Book.create! title: "Anna Karenina", author: "Leo Tolstoy", description: "She kills herself but it's complicated", img_url: "https://frisbeebookjournal.files.wordpress.com/2010/05/annakerinaml.jpg", list: List1

Movie1 = Movie.create! title: "Shawshank Redemption", director: "Frank Darabont", description: "Innocent man escapes from prison", img_url: "http://images.amcnetworks.com/ifc.com/wp-content/uploads/2014/05/shawshank-list.jpg", list: List2
Movie2 = Movie.create! title: "Where the Wild Things Are", director: "Spike Jonz", description: "Monsters are friendly", img_url: "https://media2.giphy.com/media/WHdoZQuK0JXvW/200_s.gif", list: List2

Song1 = Song.create! title: "Baby Beluga", artist: "Raffi", album: "Baby Beluga", description: "Jamie's first concert. He laughed, cried and held his mom's hand.", img_url: "https://upload.wikimedia.org/wikipedia/en/3/35/Raffi_-_Baby_Beluga_cover_art.png", list: List5
Song2 = Song.create! title: "All my friends", artist: "LCD Soundsystem", album: "Sound of Silver", description: "This song goes well with everything", img_url: "http://s3.amazonaws.com/rapgenius/lcdsoundsystem_sound_of_silver.jpeg", list: List5

Place1 = Place.create! name: "Kennedy Dog Park", address: "970 East Hampden Ave.", latitude: 39.652305, longitude: -104.874027, description: "My dog humps all the dogs in this park. He's such a boss", img_url: "http://www.ovenbakedtradition.com/wp-content/uploads/2013/04/dog-humping1.jpg", list: List3
Place2 = Place.create! name: "Holly's Apartment", address: "921 East 13th Ave", latitude: 39.737157, longitude: -104.975601, description: "This is where Holly lives.", img_url: "http://bedfordandbowery.com/wp-content/uploads/2013/10/MG_100044.jpg", list: List3 

Rando1 = Rando.create! title: "Charlie The Unicorn", description: "This is the story of a unicorn losing his kidney", img_url: "http://3219a2.medialib.glogster.com/media/0b/0bd512f9edcec12f3249b34d491cd09e6c4e425928174d97153057d121f3fce4/4406868.jpg",link_url: "https://www.youtube.com/watch?v=Fu2DcHzokew", list: List4
Rando2 = Rando.create! title: "Harvey Krumpet", description: "Harvey carves beauty from the wreckage of his terribly sad life.", img_url: "https://i.ytimg.com/vi/N0uV2jWMKvU/hqdefault.jpg", link_url: "https://www.youtube.com/watch?v=ouyVS6HOFeo", list: List4

ListUser.create! list: List1, user: User1 
ListUser.create! list: List2, user: User1
ListUser.create! list: List3, user: User1
ListUser.create! list: List4, user: User1
ListUser.create! list: List5, user: User1


# This file should contain all the record creation needed to seed the database with its default values.

# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
