 puts 'Cleaning database...'
 CuisineMealTag.destroy_all
 DietMealTag.destroy_all
 MealTypeTag.destroy_all
 Collection.destroy_all
 Order.destroy_all
 Pin.destroy_all
 Review.destroy_all
 Restaurant.destroy_all
 Meal.destroy_all
 User.destroy_all
 DietTag.destroy_all
 CuisineTag.destroy_all
 MealType.destroy_all



 require 'faker'


 puts 'Creating users...'
 user_attributes = [

   {
    email:      'eric@gmail.com',
     password:    '1234567',
     first_name: 'Eric',
     last_name:  'R',
     location: "Canggu, Bali",
     remote_avatar_url: 'https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=639&q=80',
     about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
   },
   {
     email:      'polina@gmail.com',
     password:    '1234567',
     first_name: 'Polina',
     last_name: 'D',
     location: "Canggu, Bali",
     remote_avatar_url: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1145&q=80',
     about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
   },
   {
     email:      'sacha@gmail.com',
     password:    '1234567',
     first_name: 'Sacha',
     last_name:  "M",
     location: "Canggu, Bali",
     remote_avatar_url: 'https://images.unsplash.com/photo-1503256207526-0d5d80fa2f47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80',
     about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
   },
   {
     email:      'sebastian@gmail.com',
     password:    '1234567',
     first_name: 'Sebastian',
     last_name:  "L",
     location: "Canggu, Bali",
     remote_avatar_url: 'https://images.unsplash.com/photo-1529429617124-95b109e86bb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80',
     about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
   },
   {
     email:      'dev@gmail.com',
     password:    '1234567',
     first_name: 'Dev',
     last_name:  "Dev",
     location: "Canggu, Bali",
     remote_avatar_url: 'https://images.unsplash.com/photo-1529429617124-95b109e86bb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80',
     about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
   }
  ]

 User.create!(user_attributes)


 #  35.times do
 #   users = User.new(
 #     email: Faker::Internet.email,
 #     password: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3),
 #     first_name: Faker::Name.name,
 #     location: "Canggu, Bali",
 #     remote_avatar_url: 'https://images.unsplash.com/photo-1529429617124-95b109e86bb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80',
 #     about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
 #   )
 #   users.save!
 # end
#

 puts "Generating Canggu restuarants..."
 restaurant_attributes = [
   {
    name:              'Sensorium Bali',
    address:           'Pantai Batu Bolong St No.31A, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://sensoriumbali.co.id/',
    instagram_handle:  'sensorium_bali',
    user:   User.all.sample
   },
   {
    name:              'La Brisa Bali',
    address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'http://www.labrisabali.com/',
    instagram_handle:  'labrisabali',
    user:   User.all.sample
   },
   {
    name:              'The Lawn',
    address:           'Jl. Pura Dalem, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'https://thelawncanggu.com/',
    instagram_handle:  'thelawncanggu',
    user:   User.all.sample
   },
   {
    name:              'Poke Poke Canggu',
    address:           'Jl. Munduk Catu No.36, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali',
    website_url:       'https://www.instagram.com/pokepokecanggu/',
    instagram_handle:  'pokepokecanggu',
    user:   User.all.sample
   },
   {
    name:              'Bottega Italiana Canggu',
    address:           'Pantai Batu Bolong St No.77, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.bottegaitalianabali.com/',
    instagram_handle:  'bottegaitalianabali',
    user:   User.all.sample
   } ,
  {
   name:              'Cabina Bali',
   address:           'Jl. Batu Belig Gg. Daksina No.1, Kerobokan Kelod, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
   website_url:       'https://www.cabinabali.com/',
   instagram_handle:  'cabinabali',
    user:   User.all.sample
  },
  {
   name:              'Loop Pool Bar and Restaurant',
   address:           'Pantai Batu Bolong St No.25 C, Canggu, North Kuta, Badung Regency, Bali 80361',
   website_url:       'https://www.theannavilla.com/looppool/',
   instagram_handle:  'looppoolbar',
    user:   User.all.sample
  },
  {
   name:              'COMO Beach Club Bali',
   address:           'Jalan Pantai, Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
   website_url:       'https://www.comohotels.com/en/umacanggu/dining/como-beach-club',
   instagram_handle:  'comobeachclub.canggu',
    user:   User.all.sample
  },
  {
   name:              'Echo Beach Bar and Grill',
   address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
   website_url:       'http://www.echobeachclub.com/',
   instagram_handle:  'echobeachcanggu',
    user:   User.all.sample
  },
  {
   name:              'Lv8 Resort Hotel',
   address:           'Canggu, Jl. Pantai Berawa No.100xx, Tibubeneng, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
   website_url:       'https://www.lv8bali.com/',
   instagram_handle:  'lveight',
    user:   User.all.sample
  },
  {
   name:              'Dian cafe',
   address:           'Badung, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
   website_url:       'https://dian-cafe-restaurant.business.site/',
   instagram_handle:  '',
    user:   User.all.sample
  },
    {
   name:              'Cabe Cafe',
   address:           'Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
   website_url:       'https://www.instagram.com/cabebali_seaside_cafe/?utm_source=ig_profile_share&igshid=1pqfbov4q4r4i',
   instagram_handle:  'cabebali_seaside_cafe',
    user:   User.all.sample
  },
    {
   name:              'The Açai Shop',
   address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
   website_url:       'https://www.indoamazonacai.com/',
   instagram_handle:  'theacaishopbali',
    user:   User.all.sample
  },
    {
   name:              'Terra Bali',
   address:           'Jl. Pantai Batu Mejan No.4, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
   website_url:       'https://www.instagram.com/terra_bali/',
   instagram_handle:  'terra_bali',
    user:   User.all.sample
  },
    {
   name:              'Surf Side Cafe',
   address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
   website_url:       'https://www.surfsidecafe.id/',
   instagram_handle:  'surfsidecafe17',
    user:   User.all.sample
  },
    {
   name:              'Santorini Greek Restaurant Echo Beach, Canggu',
   address:           'Jl. Pantai Batu Mejan, Canggu, Bali',
   website_url:       'https://www.facebook.com/santorinibalirestaurant/',
   instagram_handle:  'santorinigreekrestaurantbali',
    user:   User.all.sample
  },
    {
   name:              'Green Spot Cafe',
   address:           ' Echo, Beach, Jl. Batu Mejan, Canggu, North Kuta, Badung Regency, Bali 80361',
   website_url:       'https://ecosferahotel.com/greenspot/',
   instagram_handle:  'greenspotcafebali',
    user:   User.all.sample
  },
    {
   name:              'Nalu Bowls',
   address:           'Jl. Batu Mejan No.88, Canggu, Kec. Kuta Utara, Bandung, Bali 80316',
   website_url:       'https://www.nalubowls.com/nalu-bowls-dojo-bali/',
   instagram_handle:  'nalubowls',
    user:   User.all.last
  },
    {
   name:              'Alter Ego',
   address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali',
   website_url:       'https://www.facebook.com/alteregocanggu/',
   instagram_handle:  'alteregofoods',
    user:   User.all.last
  },
    {
   name:              'Teh Manis Bali',
   address:           ' Batu Mejan Street, Canggu, North Kuta, Badung Regency, Bali 80361',
   website_url:       '',
   instagram_handle:  'tehmanisbali',
    user:   User.all.last
  },
    {
   name:              'Sama Bar & Kitchen',
   address:           'Jl. Pantai Batu Mejan No.72, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
   website_url:       'https://www.instagram.com/samabarcanggu/',
   instagram_handle:  'samabarcanggu',
    user:   User.all.last
  },
    {
   name:              'Lettuce Inn',
   address:           '',
   website_url:       'https://www.facebook.com/pages/category/Restaurant/Lettuce-Inn-Bali-235195897347707/',
   instagram_handle:  'lettuceinnbali',
    user:   User.all.last
  },
   {
   name:              'Tropikale Bali',
   address:           'Jl. Pantai Batu Mejan No.108, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80363',
   website_url:       'https://tropikale.com',
   instagram_handle:  'tropikalebali',
    user:   User.all.last
  },
    {
   name:              'Warung Smile Canggu',
   address:           '',
   website_url:       'https://warung-smile-canggu.business.site/',
   instagram_handle:  'warungsmile',
    user:   User.all.last
  },
    {
   name:              'Garden Canggu by Pizza House',
   address:           '',
   website_url:       'https://www.facebook.com/gardencanggubypizzahouse/',
   instagram_handle:  'gardencanggu',
    user:   User.all.last
  },
    {
   name:              'Bang Bang Burgers Canggu',
   address:           '',
   website_url:       'https://www.facebook.com/bangbangburgerscanggu/',
   instagram_handle:  'bangbangburgers',
    user:   User.all.last
  },
    {
   name:              'Taco Casa Canggu',
   address:           '',
   website_url:       'http://tacocasabali.com/',
   instagram_handle:  'tacocasabali',
    user:   User.all.last
  },
    {
   name:              'Naked Bun',
   address:           '',
   website_url:       'https://www.instagram.com/nakedbunbali/',
   instagram_handle:  'nakedbunbali',
    user:   User.all.last
  },
    {
   name:              'Clear Cafe',
   address:           '',
   website_url:       'http://clearcafebali.com/open/',
   instagram_handle:  'clearcafe_canggu',
    user:   User.all.last
  },
    {
   name:              'Wahaha Pork Ribs - Canggu',
   address:           'Jl. Pantai Batu Mejan No.33, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
   website_url:       'http://www.wahaharibs.com/',
   instagram_handle:  'wahaha_ribs',
    user:   User.all.last
  },
    {
   name:              'The Avocado Factory',
   address:           '',
   website_url:       'https://www.theavocadofactory.com/',
   instagram_handle:  'theavocadofactory',
    user:   User.all.last
  },
    {
   name:              'Pizza Fabbrica',
   address:           '',
   website_url:       'https://www.pizzafabbrica.com/',
   instagram_handle:  'pizzafabbricabali',
    user:   User.all.last
  },
      {
   name:              'Scoop Gelato',
   address:           '',
   website_url:       'https://scoopgelato.business.site/',
   instagram_handle:  'scoopgelato_',
    user:   User.all.last
  },
       {
    name:              'BB52 Burgers',
    address:           'Jl. Tanah Barak No.52, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'https://www.bb52burgers.com/',
    instagram_handle:  '',
    user:   User.all.last
   },
       {
    name:              'Al Bacio Gelato & Cafe, Canggu',
    address:           '',
    website_url:       'https://www.facebook.com/albacio.bali/',
    instagram_handle:  '',
    user:   User.all.last
   },
       {
    name:              'Canteen Cafe',
    address:           '80361, Jl. Batu Mejan No.33, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'https://canteencafe.business.site/',
    instagram_handle:  'canteencafe',
    user:   User.all.last
   },
       {
    name:              'Gypsy Kitchen+Bar',
    address:           'Jalan Pura Batu Mejan, Gg. Munduk Catu No 1 Echo Beach Canggu, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'http://www.wearegypsy.com/bali',
    instagram_handle:  'gypsy_bali',
    user:   User.all.last
   },
       {
    name:              'BGS Bali Canggu - Coffee Bar & Surf Shop',
    address:           'Jl. Munduk Catu No.1, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'https://www.bgsbali.com/',
    instagram_handle:  'bgsbali',
    user:   User.all.last
   },
       {
    name:              'Beach Boy Canggu',
    address:           'Jl. Munduk Catu No.8, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'https://www.facebook.com/pages/category/Indonesian-Restaurant/Beach-Boy-Canggu-365491660771643/',
    instagram_handle:  '',
    user:   User.all.last
   },
       {
    name:              'LOCO - LOVE AND COCONUTS',
    address:           'Jl. Munduk Catu No.7, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'https://www.facebook.com/Loco.LoveandCoconuts/',
    instagram_handle:  'loco.loveandcoconuts',
    user:   User.all.last
   },
       {
    name:              'Monggo Bar & Restaurant',
    address:           'Jl. Munduk Catu No.8X, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://monggo-bar-restaurant.business.site/',
    instagram_handle:  '',
    user:   User.all.last
   },
       {
    name:              'Seaduction Resto & Bar',
    address:           '32, 4th Floor Batubolong, Jl. Munduk Catu, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'https://www.phm-hotels.com/friihotels/',
    instagram_handle:  '',
    user:   User.all.last
   },
       {
    name:              'Grass Terrace Cafe',
    address:           'Echo beach, Jl. Munduk Catu, Canggu, Kec. Kuta Utara, Kota Denpasar, Bali 80361',
    website_url:       'https://www.facebook.com/Grass.Terrace.Cafe/',
    instagram_handle:  '',
    user:   User.all.last
   },
         {
    name:              'Canggufields',
    address:           'Jl. Munduk Catu No.8A, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'http://canggufields.com/',
    instagram_handle:  'canggufields',
    user:   User.all.last
   },
           {
    name:              'Seaweedresto',
    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali',
    website_url:       'https://www.facebook.com/pages/Seaweed-Canggu/1752185248190825',
    instagram_handle:  '',
    user:   User.all.last
   },
           {
    name:              'Fishbone Local',
    address:           'Bali No.:99, Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.fishbonelocal.com/',
    instagram_handle:  'fishbonelocal',
    user:   User.all.last
   },
           {
    name:              'Warung Alody Canggu',
    address:           'Parkiran Pura Batu Bolong, Jl. Pantai Batu Bolong, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://warung-alody.business.site/',
    instagram_handle:  'warungalody_',
    user:   User.all.last
   },
           {
    name:              'Sand Dune, Canggu',
    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://sanddune.business.site/?utm_source=gmb&utm_medium=referral',
    instagram_handle:  '',
    user:   User.all.last
   },
           {
    name:              "Old Man's",
    address:           'Pantai Batu Bolong St No.117X, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://www.oldmans.net/',
    instagram_handle:  'oldmansbali',
    user:   User.all.last
   },
           {
    name:              'Iwa Restaurant at Hotel Tugu Bali',
    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali',
    website_url:       'https://www.tuguhotels.com/hotels/bali/dining/',
    instagram_handle:  'tuguhotels',
    user:   User.all.last
   },
           {
    name:              'Ji Restaurant Bali',
    address:           'Jalan Pantai Batu Bolong, Canggu Beach, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'http://www.jirestaurantbali.com/',
    instagram_handle:  'jirestaurantbali',
    user:   User.all.last
   },
           {
    name:              'Ithaka Warung',
    address:           'Pantai Batu Bolong St No.168, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://www.ithakawarung.com/',
    instagram_handle:  'ithakawarung',
    user:   User.all.last
   },
           {
    name:              'UpZscale Sky Dining and Bar',
    address:           'Pantai Batu Bolong St No.99, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://upzscale-sky-dining-and-bar.business.site/',
    instagram_handle:  'upzscaleskydiningandbar',
    user:   User.all.last
   },
           {
    name:              'Billy Ho',
    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali',
    website_url:       'http://billyho.co/',
    instagram_handle:  'billyho.co',
    user:   User.all.last
   },
           {
    name:              'Paletas Wey Canggu',
    address:           'Pantai Batu Bolong St No.89x, Canggu, North Kuta, Badung Regency, Bali',
    website_url:       'https://www.paletaswey.com/',
    instagram_handle:  'paletaswey',
    user:   User.all.last
   },
           {
    name:              'Beach Tavern Canggu',
    address:           'Pantai Batu Bolong St No.103-107, Canggu, North Kuta, Badung Regency, Bali',
    website_url:       '',
    instagram_handle:  '',
    user:   User.all.last
   },
           {
    name:              'The Slow Kitchen and Bar',
    address:           'Pantai Batu Bolong St No.97, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://theslowkitchenandbar.com/',
    instagram_handle:  'the.slow',
    user:   User.all.last
   },
           {
    name:              'Beachgarden - Organic Kitchen',
    address:           'Pantai Batu Bolong St No.103, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://m.facebook.com/beachgardenorganickitchen/',
    instagram_handle:  '',
    user:   User.all.last
   },
           {
    name:              'Cocomo Canggu',
    address:           'Pantai Batu Bolong St No.91, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://www.cocomocanggu.com/',
    instagram_handle:  'cocomocanggu',
    user:   User.all.last
   },
           {
    name:              'Warung Cucu',
    address:           'Jalan Pantai Batu Bolong No.89x, Kuta Utara, Canggu, Badung, Kabupaten Badung, Bali 80361',
    website_url:       'https://support.wix.com/en/ugc/6aeeb7d1-e430-4df7-af4e-6b40bd26395d/',
    instagram_handle:  '',
    user:   User.all.last
   },
           {
    name:              'Lacalita Bar y Cocina',
    address:           'Pantai Batu Bolong St No.68, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.lacalongtime.com/',
    instagram_handle:  'lacalongtime',
    user:   User.all.last
   },
           {
    name:              'Montagu Sandwich Bar',
    address:           'Pantai Batu Bolong St No.94, Canggu, North Kuta, Badung Regency, Bali',
    website_url:       'https://montagu-sandwich-bar.business.site/',
    instagram_handle:  'montagusandwichbarbali',
    user:   User.all.last
   },
             {
    name:              'Warung Varuna',
    address:           'Pantai Batu Bolong St No.89x, Canggu, North Kuta, Badung Regency, Bali',
    website_url:       'https://varuna-warung-canggu.business.site/',
    instagram_handle:  '',
    user:   User.all.last
   },
             {
    name:              'Mason',
    address:           'Pantai Batu Bolong St No.39a, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.masonbali.com/',
    instagram_handle:  'mason.bali',
    user:   User.all.last
   },
             {
    name:              'Plant Cartel',
    address:           '',
    website_url:       'http://www.plantcartel.com/',
    instagram_handle:  'plantcartel',
    user:   User.all.last
   },
             {
    name:              'The Mocca',
    address:           'Gg. Nyepi, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.facebook.com/themocca/',
    instagram_handle:  'the.mocca',
    user:   User.all.last
   },
             {
    name:              'Essential Canggu',
    address:           'Gg. Nyepi No.22, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.essentialcanggu.com/',
    instagram_handle:  'essentialcanggu',
    user:   User.all.last
   },
             {
    name:              'Thai & Co',
    address:           'Jl Batu Bolong, Gg. Nyepi, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'http://thai-corner.com/',
    instagram_handle:  'thaiandcobali',
    user:   User.all.last
   },
             {
    name:              'Peekaboo',
    address:           'Pantai Batu Bolong St No.72, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'http://peekaboocanggu.com/',
    instagram_handle:  'peekaboo_canggu',
    user:   User.all.last
   },
             {
    name:              'Waroeng Nonii',
    address:           'Pantai Batu Bolong St No.72, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://www.facebook.com/WaroengNonii',
    instagram_handle:  '',
    user:   User.all.last
   },
             {
    name:              'Betelnut Cafe',
    address:           'Pantai Batu Bolong St No.60, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://www.facebook.com/Betelnut-Cafe-289844997715255/',
    instagram_handle:  'betelnutcafe',
    user:   User.all.last
   },
             {
    name:              'Roti Canai Street Kitchen',
    address:           'Jalan Raya Batu Bolong, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://roti-canai-street-kitchen.business.site/',
    instagram_handle:  'roticanaicanggu',
    user:   User.all.last
   },
               {
    name:              "Pablo's",
    address:           'Pantai Batu Bolong St No.58, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'http://www.pabloscanggu.com/',
    instagram_handle:  'pabloscanggu',
    user:   User.all.last
   },
               {
    name:              'Monsieur Spoon Canggu',
    address:           'Pantai Batu Bolong St No.55, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'http://www.monsieurspoon.com/',
    instagram_handle:  'monsieurspoon',
    user:   User.all.last
   },
               {
    name:              'Mai Tai - Tahitian Kitchen',
    address:           'Echo beach, Jalan Batu Mejan No.50, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'http://maitaibali.com/',
    instagram_handle:  'maitaibali',
    user:   User.all.last
   },
            {
    name:              'Metta Cafe',
    address:           'Jl Pantai Batu Bolong , Canggu , Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'https://metta-cafe.business.site/',
    instagram_handle:  'mettacanggucafe',
    user:   User.all.last
   },
               {
    name:              'Gaya Gelato',
    address:           'Jalan Batu Mejan Echo Beach, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'http://www.gayagelato.com/en/',
    instagram_handle:  'gayagelatolabsayan',
    user:   User.all.last
   },
               {
    name:              "Luigi's Hot Pizza",
    address:           'Jalan Batu Mejan, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.facebook.com/luigishotpizzabali/',
    instagram_handle:  'luigishotpizzabali',
    user:   User.all.last
   },
               {
    name:              'Deus Ex Machina - Temple of Enthusiasm',
    address:           'Jl. Pantai Batu Mejan No.8, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'http://deuscustoms.com/',
    instagram_handle:  'deustemple',
    user:   User.all.last
   },
               {
    name:              'Cafe Organic',
    address:           'Jalan Pantai Batu Bolong No. 58, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://cafeorganic.co/',
    instagram_handle:  'cafeorganicbali',
    user:   User.all.last
   },
               {
    name:              'Secret Spot',
    address:           'Jl. Pantai Berawa No.44, Tibubeneng, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'https://www.facebook.com/secretspotbali/',
    instagram_handle:  'secretspotbali',
    user:   User.all.last
   },
               {
    name:              'I Make The Pies',
    address:           'Jl. Tanah Barak No.8, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.imakethepies.com/',
    instagram_handle:  'imakethepies',
    user:   User.all.last
   },
               {
    name:              'La Bandida',
    address:           'Jl. Tanah Barak, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.instagram.com/labandida.bali/?hl=en',
    instagram_handle:  'labandida.bali',
    user:   User.all.last
   },
               {
    name:              'The Shady Shack',
    address:           'Jl. Tanah Barak No.57, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://the-shady-shack.business.site/',
    instagram_handle:  'theshadyshack',
    user:   User.all.last
   },
               {
    name:              'La Baracca',
    address:           'Jl. Tanah Barak No.51, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.labaraccabali.com/',
    instagram_handle:  'labaraccabali',
    user:   User.all.last
   },
               {
    name:              'I am Vegan Babe Cafe',
    address:           'Jl. Tanah Barak No.49, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.iamveganbabe.com/',
    instagram_handle:  'iamveganbabe',
    user:   User.all.last
   },
               {
    name:              'Warung Sika',
    address:           'Jl. Tanah Barak No.45, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       '',
    instagram_handle:  '',
    user:   User.all.last
   },
               {
    name:              "Leroy's Vietnamese",
    address:           'Jl. Tanah Barak No.43, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.leroysvietnamese.com/',
    instagram_handle:  'leroys.vietnamese',
    user:   User.all.last
   },
               {
    name:              'Two Moods',
    address:           'Jl. Tanah Barak No.47, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.facebook.com/2moods.bali/',
    instagram_handle:  'twomoods.bali',
    user:   User.all.last
   },
               {
    name:              'XiaHouse Restaurant',
    address:           'Jl. Tanah Barak, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://www.instagram.com/xiahousebali/?hl=en',
    instagram_handle:  'xiahousebali',
    user:   User.all.last
   },
   {
    name:              'Warung Bu Mi',
    address:           'Pantai Batu Bolong St No.52, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://warungbumi.business.site/',
    instagram_handle:  '',
    user:   User.all.last
   },
   {
    name:              'Motion Cafe',
    address:           'Pantai Batu Bolong St No.69B, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://www.motionfitnessbali.com/food/#cafe',
    instagram_handle:  'motioncafe',
    user:   User.all.last
   },
     {
    name:              'Memoh Warung',
    address:           'Pantai Batu Bolong St No.63B, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://memoh-warung.business.site/',
    instagram_handle:  '',
    user:   User.all.last
   },
     {
    name:              'The Loft',
    address:           'Pantai Batu Bolong St No.50A, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.theloftbali.co/canggu-1',
    instagram_handle:  'theloftbali',
    user:   User.all.last
   },
     {
    name:              'The Common Cafe',
    address:           'Pantai Batu Bolong St No.65, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://www.thecommonbali.com/',
    instagram_handle:  'thecommonbali',
    user:   User.all.last
   },
     {
    name:              'Warung Jaba',
    address:           'No., Jalan Pantai Batu Bolong No.40A, Canggu, Kuta Utara, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://warung-jaba.business.site/',
    instagram_handle:  '',
    user:   User.all.last
   },
     {
    name:              'Cafe Vida',
    address:           'Pantai Batu Bolong St No.38A, Canggu, North Kuta, Badung Regency, Bali 80351',
    website_url:       'https://cafe-vida-bali.business.site/',
    instagram_handle:  'cafe_vida_bali',
    user:   User.all.last
   },
     {
    name:              'Bro Resto',
    address:           'Pantai Batu Bolong St No.34, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://m.facebook.com/BroResto/?ref=bookmarks',
    instagram_handle:  'broresto',
    user:   User.all.last
   },
     {
    name:              'Koi Batu Bolong',
    address:           'Pantai Batu Bolong St No.32, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.koibatubolong.com/',
    instagram_handle:  'koicanggu',
    user:   User.all.last
   },
     {
    name:              'Gerua Resto',
    address:           'Pantai Batu Bolong St No.30, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://geruaresto.com/',
    instagram_handle:  'geruaindia',
    user:   User.all.last
   },
     {
    name:              'Moana Fish Eatery',
    address:           'Pantai Batu Bolong St No.28, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.facebook.com/moana.fish.eatery/',
    instagram_handle:  'moanabali',
    user:   User.all.last
   },
     {
    name:              'Crate Cafe',
    address:           'Jl. Canggu Padang Linjong, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'http://lifescrate.com/',
    instagram_handle:  'cratecafe',
    user:   User.all.last
   },
     {
    name:              "Made's Banana Flour Company",
    address:           'Pantai Batu Bolong St No.41, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.madesbakery.com/',
    instagram_handle:  'madesbananaflourco',
    user:   User.all.last
   },
     {
    name:              'Machinery Cafe Bal',
    address:           'No, Jl. Pantai Batu Bolong No.35, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
    website_url:       'https://machinerycafebali.wordpress.com/',
    instagram_handle:  'machinerycafebali',
    user:   User.all.last
   },
     {
    name:              "Oka's Bakery & Cafe",
    address:           'Pantai Batu Bolong St No.27A, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.facebook.com/okasbakerycanggu',
    instagram_handle:  'okasbakerycanggu',
    user:   User.all.last
   },
     {
    name:              'Warung Dandelion',
    address:           'Pantai Batu Bolong St No.10, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.facebook.com/dandelioncanggu/',
    instagram_handle:  'dandelioncanggu',
    user:   User.all.last
   },
     {
    name:              'Eden Cafe',
    address:           'Pantai Batu Bolong St No.8, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://edencafe-bali.com/',
    instagram_handle:  'edencafebali',
    user:   User.all.last
   },
     {
    name:              'Black Sand Brewery',
    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.blacksandbrewery.com/',
    instagram_handle:  'blacksandbrewery',
    user:   User.all.last
   },
     {
    name:              'Cloud 9 Canggu',
    address:           'Jalan Subak Canggu Canggu Kuta, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'http://cloud9bali.com/',
    instagram_handle:  'cloud9bali',
    user:   User.all.last
   },
       {
    name:              "Lola's Cantina Mexicana",
    address:           '',
    website_url:       'https://www.lolasbali.com/',
    instagram_handle:  'lolasbali',
    user:   User.all.last
   },
       {
    name:              'Dream Coffee Bali',
    address:           'Jl. Nelayan No.25a, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali',
    website_url:       'https://www.facebook.com/dreamcoffeebali/',
    instagram_handle:  'my_dream_coffee',
    user:   User.all.last
   },
       {
    name:              'Superfood Health Bar',
    address:           'Jl. Nelayan No.33, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       '',
    instagram_handle:  '',
    user:   User.all.last
   },
       {
    name:              'Fat Mermaid',
    address:           'Jl. Nelayan No.33, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
    website_url:       'http://www.fatmermaidbali.com/',
    instagram_handle:  'fatmermaid.bali',
    user:   User.all.last
   },
       {
    name:              'Alkaline Restaurant',
    address:           'Serenity Eco Guesthouse, Jl. Nelayan No.Banjar, Canggu, North Kuta, Badung Regency, Bali 80361',
    website_url:       'https://www.serenitybali.com/en/restaurant/philosophy/',
    instagram_handle:  'serenitybali',
    user:   User.all.last
   },
       {
    name:              'ZIN Cafe Canggu',
    address:           'Jl. Nelayan No.78F, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali',
    website_url:       'http://zin-cafe.com/',
    instagram_handle:  'zin_cafe',
    user:   User.all.last
   }
 ]
# # p restaurant_attributes.count
#
  Restaurant.create!(restaurant_attributes)
  puts "Restaurants created!"
#
#   puts "Generating meals..."
#   meal_attributes = [
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#     {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   },
#   {
#     name:  Faker::Food.dish,
#     description:  Faker::Food.description,
#     price:   (rand(1..20)),
#     user:   User.all.sample,
#     restaurant: Restaurant.all.sample,
#     photo_list: 0
#   }
# ]

#   #   {
#   #   name:  Faker::Food.dish,
#   #   description:  'Check out this bowl',
#   #   price:   (rand(1..20)),
#   #   user:   User.all.sample,
#   #   restaurant: Restaurant.all.sample
#   # },
#   #   {
#   #   name:  Faker::Food.dish,
#   #   description:  'Check out this bowl',
#   #   price:   (rand(1..20)),
#   #   user:   User.all.sample,
#   #   restaurant: Restaurant.all.sample
#   # },
#   #   {
#   #   name:  'Chicken marsala',
#   #   description:  'Check out this bowl',
#   #   price:   (rand(1..20)),
#   #   user:   User.all.sample,
#   #   restaurant: Restaurant.all.sample
#   # },
#   #   {
#   #   name:  'Spaghetti',
#   #   description:  'Check out this bowl',
#   #   price:   (rand(1..20)),
#   #   user:   User.all.sample,
#   #   restaurant: Restaurant.all.sample
#   # },
#   #   {
#   #   name:  'Pizza pizza',
#   #   description:  'Check out this bowl',
#   #   price:   (rand(1..20)),
#   #   user:   User.all.sample,
#   #   restaurant: Restaurant.all.sample
#   # },
#   #   {
#   #   name:  'Chef salad',
#   #   description:  'Check out this bowl',
#   #   price:   (rand(1..20)),
#   #   user:   User.all.sample,
#   #   restaurant: Restaurant.all.sample
#   # },
#   #   {
#   #   name:  'Steak and eggs',
#   #   description:  'Check out this bowl',
#   #   price:   (rand(1..20)),
#   #   user:   User.all.sample,
#   #   restaurant: Restaurant.all.sample
#   # },
#   #   {
#   #   name:  'Breakfast burrito',
#   #   description:  'Check out this bowl',
#   #   price:   (rand(1..20)),
#   #   user:   User.all.sample,
#   #   restaurant: Restaurant.all.sample
#   # },
#   #   {
#   #   name:  'Avocado toast',
#   #   description:  'Check out this bowl',
#   #   price:   (rand(1..20)),
#   #   user:   User.all.sample,
#   #   restaurant: Restaurant.all.sample
#   # }


# PHOTOS = [
# 'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
# 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1534070189982-818bb5622474?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80',
# 'https://images.unsplash.com/photo-1481931098730-318b6f776db0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=637&q=80',
# 'https://images.unsplash.com/photo-1548156970-a18b04d45626?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1485963631004-f2f00b1d6606?ixlib=rb-1.2.1&auto=format&fit=crop&w=968&q=80',
# 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
# 'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=687&q=80',
# 'https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
# 'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
# 'https://images.unsplash.com/photo-1432139555190-58524dae6a55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80',
# 'https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1505253716362-afaea1d3d1af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1504544750208-dc0358e63f7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80',
# 'https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
# 'https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
# 'https://images.unsplash.com/photo-1506084868230-bb9d95c24759?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1485962398705-ef6a13c41e8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
# 'https://images.unsplash.com/photo-1529042410759-befb1204b468?ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
# 'https://images.unsplash.com/photo-1470119693884-47d3a1d1f180?ixlib=rb-1.2.1&auto=format&fit=crop&w=1594&q=80',
# 'https://images.unsplash.com/photo-1432139509613-5c4255815697?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=632&q=80',
# 'https://images.unsplash.com/photo-1546241072-48010ad2862c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
# 'https://images.unsplash.com/photo-1460306855393-0410f61241c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80'
#  ]

DietTag::DIET_TAG.each do |tag|
  DietTag.create(name: tag)
end

CuisineTag::CUISINE_TAG.each do |tag|
  CuisineTag.create(name: tag)
end

MealType::MEAL_TYPE.each do |tag|
  MealType.create(name: tag)
end


# meal_attributes.each do |f|

#   meal = Meal.create!(f)
#   Mealphoto.create!(meal: meal, remote_photo_url: PHOTOS.sample)

#   diet = DietTag.all.sample
#   DietMealTag.create!(meal: meal, diet_tag: diet)

#   cuisine = CuisineTag.all.sample
#   CuisineMealTag.create!(meal: meal, cuisine_tag: cuisine)

#   meal_type = MealType.all.sample
#   MealTypeTag.create!(meal: meal, meal_type: meal_type)
# end

#   puts "Meals created!"

#  puts "Generating reviews"

#  100.times do
#   reviews = Review.new(
#    rating: (rand(1..5)),
#    content: Faker::Restaurant.review,
#    meal:    Meal.all.sample,
#    user:    User.all.sample
#   )
#   reviews.save!
#  end

# puts "Reviews created!"


#  # reviews_attributes = [
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # },
#  # {
#  #   rating: (rand(1..5)),
#  #   content: Faker::Restaurant.review,
#  #   meal:    Meal.all.sample,
#  #   user:    User.all.sample
#  # }

#  # ]

#  # Review.create!(reviews_attributes)
#  # puts "Reviews created"
# #
#  puts "Generating collections"
#  collection_attributes = [
#  {
#    name: "Favorites",
#    user:   User.first
#  },
#  {
#    name: "Brunch",
#    user:   User.first
#  },
#  {
#    name: "Canguu",
#    user:   User.first
#  },
#  {
#    name: "Bali",
#    user:   User.first
#  },
#  ]

#  Collection.create!(collection_attributes)
#  puts "Collections created!"
# #
#  # puts "Generating pins"
#  # pin_attributes [
#  # {
#  #   meal: Meal.all.sample,
#  #   collection: Collection.all.sample
#  # }
#  # ]
# #
# #
#  60.times do
#    pins = Pin.new(
#      meal: Meal.all.sample,
#      collection: Collection.all.sample
#    )
#    pins.save!
#  end
# #
#  puts "Pins created!"
# #
