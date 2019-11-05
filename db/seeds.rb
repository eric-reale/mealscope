puts 'Cleaning database...'
Restaurant.destroy_all

puts "Generating Canggu restuarants..."
restaurant_attributes = [
  {
   name:              'Sensorium Bali',
   address:           'Pantai Batu Bolong St No.31A, Canggu, North Kuta, Badung Regency, Bali 80361',
   website_url:       'https://sensoriumbali.co.id/',
   instagram_handle:  'sensorium_bali'
  }


  #,
#   {
#    name:              'Cabina Bali',
#    address:           'Jl. Batu Belig Gg. Daksina No.1, Kerobokan Kelod, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.cabinabali.com/',
#    instagram_handle:  'cabinabali'
#   },
#   {
#    name:              'Loop Pool Bar and Restaurant',
#    address:           'Pantai Batu Bolong St No.25 C, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.theannavilla.com/looppool/',
#    instagram_handle:  'looppoolbar'
#   },
#   {
#    name:              'COMO Beach Club Bali',
#    address:           'Jalan Pantai, Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.comohotels.com/en/umacanggu/dining/como-beach-club',
#    instagram_handle:  'comobeachclub.canggu'
#   },
#   {
#    name:              'Le Pirate Eat Club And Bar',
#    address:           'Jalan Nusa Ceningan, Klungkung, Lembongan, Nusapenida, Klungkung Regency, Bali 82218',
#    website_url:       'https://lepirate.com/',
#    instagram_handle:  'lepiratebeachclub'
#   },
#   {
#    name:              'Echo Beach Bar and Grill',
#    address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'http://www.echobeachclub.com/',
#    instagram_handle:  'echobeachcanggu'
#   },
#   {
#    name:              'Lv8 Resort Hotel',
#    address:           'Canggu, Jl. Pantai Berawa No.100xx, Tibubeneng, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.lv8bali.com/',
#    instagram_handle:  'lveight'
#   },
#   {
#    name:              'Dian cafe',
#    address:           'Badung, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://dian-cafe-restaurant.business.site/',
#    instagram_handle:  ''
#   },
#     {
#    name:              'Cabe Cafe',
#    address:           'Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.instagram.com/cabebali_seaside_cafe/?utm_source=ig_profile_share&igshid=1pqfbov4q4r4i',
#    instagram_handle:  'cabebali_seaside_cafe'
#   },
#     {
#    name:              'The Açai Shop',
#    address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.indoamazonacai.com/',
#    instagram_handle:  'theacaishopbali'
#   },
#     {
#    name:              'Terra Bali',
#    address:           'Jl. Pantai Batu Mejan No.4, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.instagram.com/terra_bali/',
#    instagram_handle:  'terra_bali'
#   },
#     {
#    name:              'Surf Side Cafe',
#    address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.surfsidecafe.id/',
#    instagram_handle:  'surfsidecafe17'
#   },
#     {
#    name:              'La Brisa Bali',
#    address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'http://www.labrisabali.com/',
#    instagram_handle:  'labrisabali'
#   },
#     {
#    name:              'Santorini Greek Restaurant Echo Beach, Canggu',
#    address:           'Jl. Pantai Batu Mejan, Canggu, Bali',
#    website_url:       'https://www.facebook.com/santorinibalirestaurant/',
#    instagram_handle:  'santorinigreekrestaurantbali'
#   },
#     {
#    name:              'Green Spot Cafe',
#    address:           ' Echo, Beach, Jl. Batu Mejan, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://ecosferahotel.com/greenspot/',
#    instagram_handle:  'greenspotcafebali'
#   },
#     {
#    name:              'Nalu Bowls',
#    address:           'Jl. Batu Mejan No.88, Canggu, Kec. Kuta Utara, Bandung, Bali 80316',
#    website_url:       'https://www.nalubowls.com/nalu-bowls-dojo-bali/',
#    instagram_handle:  'nalubowls'
#   },
#     {
#    name:              'Alter Ego',
#    address:           'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali',
#    website_url:       'https://www.facebook.com/alteregocanggu/',
#    instagram_handle:  'alteregofoods'
#   },
#     {
#    name:              'Teh Manis Bali',
#    address:           ' Batu Mejan Street, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       '',
#    instagram_handle:  'tehmanisbali'
#   },
#     {
#    name:              'Sama Bar & Kitchen',
#    address:           'Jl. Pantai Batu Mejan No.72, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.instagram.com/samabarcanggu/',
#    instagram_handle:  'samabarcanggu'
#   },
#     {
#    name:              'Lettuce Inn',
#    address:           '',
#    website_url:       'https://www.facebook.com/pages/category/Restaurant/Lettuce-Inn-Bali-235195897347707/',
#    instagram_handle:  'lettuceinnbali'
#   },
#     {
#    name:              'Warung Smile Canggu',
#    address:           '',
#    website_url:       'https://warung-smile-canggu.business.site/',
#    instagram_handle:  'warungsmile'
#   },
#     {
#    name:              'Garden Canggu by Pizza House',
#    address:           '',
#    website_url:       'https://www.facebook.com/gardencanggubypizzahouse/',
#    instagram_handle:  'gardencanggu'
#   },
#     {
#    name:              'Bang Bang Burgers Canggu',
#    address:           '',
#    website_url:       'https://www.facebook.com/bangbangburgerscanggu/',
#    instagram_handle:  'bangbangburgers'
#   },
#     {
#    name:              'Taco Casa Canggu',
#    address:           '',
#    website_url:       'http://tacocasabali.com/',
#    instagram_handle:  'tacocasabali'
#   },
#     {
#    name:              'Naked Bun',
#    address:           '',
#    website_url:       'https://www.instagram.com/nakedbunbali/',
#    instagram_handle:  'nakedbunbali'
#   },
#     {
#    name:              'Clear Cafe',
#    address:           '',
#    website_url:       'http://clearcafebali.com/open/',
#    instagram_handle:  'clearcafe_canggu'
#   },
#     {
#    name:              'Wahaha Pork Ribs - Canggu',
#    address:           'Jl. Pantai Batu Mejan No.33, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'http://www.wahaharibs.com/',
#    instagram_handle:  'wahaha_ribs'
#   },
#     {
#    name:              'The Avocado Factory',
#    address:           '',
#    website_url:       'https://www.theavocadofactory.com/',
#    instagram_handle:  'theavocadofactory'
#   },
#     {
#    name:              'Pizza Fabbrica',
#    address:           '',
#    website_url:       'https://www.pizzafabbrica.com/',
#    instagram_handle:  'pizzafabbricabali'
#   },
#       {
#    name:              'Scoop Gelato',
#    address:           '',
#    website_url:       'https://scoopgelato.business.site/',
#    instagram_handle:  'scoopgelato_'
#   },
#       {
#    name:              'BB52 Burgers',
#    address:           'Jl. Tanah Barak No.52, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.bb52burgers.com/',
#    instagram_handle:  ''
#   },
#       {
#    name:              'Al Bacio Gelato & Cafe, Canggu',
#    address:           '',
#    website_url:       'https://www.facebook.com/albacio.bali/',
#    instagram_handle:  ''
#   },
#       {
#    name:              'Canteen Cafe',
#    address:           '80361, Jl. Batu Mejan No.33, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://canteencafe.business.site/',
#    instagram_handle:  'canteencafe'
#   },
#       {
#    name:              'Gypsy Kitchen+Bar',
#    address:           'Jalan Pura Batu Mejan, Gg. Munduk Catu No 1 Echo Beach Canggu, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'http://www.wearegypsy.com/bali',
#    instagram_handle:  'gypsy_bali'
#   },
#       {
#    name:              'BGS Bali Canggu - Coffee Bar & Surf Shop',
#    address:           'Jl. Munduk Catu No.1, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.bgsbali.com/',
#    instagram_handle:  'bgsbali'
#   },
#       {
#    name:              'Beach Boy Canggu',
#    address:           'Jl. Munduk Catu No.8, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.facebook.com/pages/category/Indonesian-Restaurant/Beach-Boy-Canggu-365491660771643/',
#    instagram_handle:  ''
#   },
#       {
#    name:              'LOCO - LOVE AND COCONUTS',
#    address:           'Jl. Munduk Catu No.7, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.facebook.com/Loco.LoveandCoconuts/',
#    instagram_handle:  'loco.loveandcoconuts'
#   },
#       {
#    name:              'Monggo Bar & Restaurant',
#    address:           'Jl. Munduk Catu No.8X, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://monggo-bar-restaurant.business.site/',
#    instagram_handle:  ''
#   },
#       {
#    name:              'Seaduction Resto & Bar',
#    address:           '32, 4th Floor Batubolong, Jl. Munduk Catu, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.phm-hotels.com/friihotels/',
#    instagram_handle:  ''
#   },
#       {
#    name:              'Grass Terrace Cafe',
#    address:           'Echo beach, Jl. Munduk Catu, Canggu, Kec. Kuta Utara, Kota Denpasar, Bali 80361',
#    website_url:       'https://www.facebook.com/Grass.Terrace.Cafe/',
#    instagram_handle:  ''
#   },
#         {
#    name:              'Canggufields',
#    address:           'Jl. Munduk Catu No.8A, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'http://canggufields.com/',
#    instagram_handle:  'canggufields'
#   },
#         {
#    name:              'Poke Poke Canggu',
#    address:           'Jl. Munduk Catu No.36, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali',
#    website_url:       'https://www.instagram.com/pokepokecanggu/',
#    instagram_handle:  'pokepokecanggu'
#   },
#           {
#    name:              'The Lawn',
#    address:           'Jl. Pura Dalem, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://thelawncanggu.com/',
#    instagram_handle:  'thelawncanggu'
#   },
#           {
#    name:              'Seaweedresto',
#    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali',
#    website_url:       'https://www.facebook.com/pages/Seaweed-Canggu/1752185248190825',
#    instagram_handle:  ''
#   },
#           {
#    name:              'Fishbone Local',
#    address:           'Bali No.:99, Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.fishbonelocal.com/',
#    instagram_handle:  'fishbonelocal'
#   },
#           {
#    name:              'Warung Alody Canggu',
#    address:           'Parkiran Pura Batu Bolong, Jl. Pantai Batu Bolong, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://warung-alody.business.site/',
#    instagram_handle:  'warungalody_'
#   },
#           {
#    name:              'Sand Dune, Canggu',
#    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://sanddune.business.site/?utm_source=gmb&utm_medium=referral',
#    instagram_handle:  ''
#   },
#           {
#    name:              "Old Man's",
#    address:           'Pantai Batu Bolong St No.117X, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://www.oldmans.net/',
#    instagram_handle:  'oldmansbali'
#   },
#           {
#    name:              'Iwa Restaurant at Hotel Tugu Bali',
#    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali',
#    website_url:       'https://www.tuguhotels.com/hotels/bali/dining/',
#    instagram_handle:  'tuguhotels'
#   },
#           {
#    name:              'Ji Restaurant Bali',
#    address:           'Jalan Pantai Batu Bolong, Canggu Beach, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'http://www.jirestaurantbali.com/',
#    instagram_handle:  'jirestaurantbali'
#   },
#           {
#    name:              'Ithaka Warung',
#    address:           'Pantai Batu Bolong St No.168, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://www.ithakawarung.com/',
#    instagram_handle:  'ithakawarung'
#   },
#           {
#    name:              'UpZscale Sky Dining and Bar',
#    address:           'Pantai Batu Bolong St No.99, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://upzscale-sky-dining-and-bar.business.site/',
#    instagram_handle:  'upzscaleskydiningandbar'
#   },
#           {
#    name:              'Billy Ho',
#    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali',
#    website_url:       'http://billyho.co/',
#    instagram_handle:  'billyho.co'
#   },
#           {
#    name:              'Paletas Wey Canggu',
#    address:           'Pantai Batu Bolong St No.89x, Canggu, North Kuta, Badung Regency, Bali',
#    website_url:       'https://www.paletaswey.com/',
#    instagram_handle:  'paletaswey'
#   },
#           {
#    name:              'Beach Tavern Canggu',
#    address:           'Pantai Batu Bolong St No.103-107, Canggu, North Kuta, Badung Regency, Bali',
#    website_url:       '',
#    instagram_handle:  ''
#   },
#           {
#    name:              'The Slow Kitchen and Bar',
#    address:           'Pantai Batu Bolong St No.97, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://theslowkitchenandbar.com/',
#    instagram_handle:  'the.slow'
#   },
#           {
#    name:              'Beachgarden - Organic Kitchen',
#    address:           'Pantai Batu Bolong St No.103, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://m.facebook.com/beachgardenorganickitchen/',
#    instagram_handle:  ''
#   },
#           {
#    name:              'Cocomo Canggu',
#    address:           'Pantai Batu Bolong St No.91, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://www.cocomocanggu.com/',
#    instagram_handle:  'cocomocanggu'
#   },
#           {
#    name:              'Warung Cucu',
#    address:           'Jalan Pantai Batu Bolong No.89x, Kuta Utara, Canggu, Badung, Kabupaten Badung, Bali 80361',
#    website_url:       'https://support.wix.com/en/ugc/6aeeb7d1-e430-4df7-af4e-6b40bd26395d/',
#    instagram_handle:  ''
#   },
#           {
#    name:              'Lacalita Bar y Cocina',
#    address:           'Pantai Batu Bolong St No.68, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.lacalongtime.com/',
#    instagram_handle:  'lacalongtime'
#   },
#           {
#    name:              'Montagu Sandwich Bar',
#    address:           'Pantai Batu Bolong St No.94, Canggu, North Kuta, Badung Regency, Bali',
#    website_url:       'https://montagu-sandwich-bar.business.site/',
#    instagram_handle:  'montagusandwichbarbali'
#   },
#             {
#    name:              'Warung Varuna',
#    address:           'Pantai Batu Bolong St No.89x, Canggu, North Kuta, Badung Regency, Bali',
#    website_url:       'https://varuna-warung-canggu.business.site/',
#    instagram_handle:  ''
#   },
#             {
#    name:              'Mason',
#    address:           'Pantai Batu Bolong St No.39a, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.masonbali.com/',
#    instagram_handle:  'mason.bali'
#   },
#             {
#    name:              'Plant Cartel',
#    address:           '',
#    website_url:       'http://www.plantcartel.com/',
#    instagram_handle:  'plantcartel'
#   },
#             {
#    name:              'The Mocca',
#    address:           'Gg. Nyepi, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.facebook.com/themocca/',
#    instagram_handle:  'the.mocca'
#   },
#             {
#    name:              'Essential Canggu',
#    address:           'Gg. Nyepi No.22, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.essentialcanggu.com/',
#    instagram_handle:  'essentialcanggu'
#   },
#             {
#    name:              'Thai & Co',
#    address:           'Jl Batu Bolong, Gg. Nyepi, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'http://thai-corner.com/',
#    instagram_handle:  'thaiandcobali'
#   },
#             {
#    name:              'Bottega Italiana Canggu',
#    address:           'Pantai Batu Bolong St No.77, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.bottegaitalianabali.com/',
#    instagram_handle:  'bottegaitalianabali'
#   },
#             {
#    name:              'Peekaboo',
#    address:           'Pantai Batu Bolong St No.72, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'http://peekaboocanggu.com/',
#    instagram_handle:  'peekaboo_canggu'
#   },
#             {
#    name:              'Waroeng Nonii',
#    address:           'Pantai Batu Bolong St No.72, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://www.facebook.com/WaroengNonii',
#    instagram_handle:  ''
#   },
#             {
#    name:              'Betelnut Cafe',
#    address:           'Pantai Batu Bolong St No.60, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://www.facebook.com/Betelnut-Cafe-289844997715255/',
#    instagram_handle:  'betelnutcafe'
#   },
#             {
#    name:              'Roti Canai Street Kitchen',
#    address:           'Jalan Raya Batu Bolong, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://roti-canai-street-kitchen.business.site/',
#    instagram_handle:  'roticanaicanggu'
#   },
#               {
#    name:              "Pablo's",
#    address:           'Pantai Batu Bolong St No.58, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'http://www.pabloscanggu.com/',
#    instagram_handle:  'pabloscanggu'
#   },
#               {
#    name:              'Monsieur Spoon Canggu',
#    address:           'Pantai Batu Bolong St No.55, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'http://www.monsieurspoon.com/',
#    instagram_handle:  'monsieurspoon'
#   },
#               {
#    name:              'Mai Tai - Tahitian Kitchen',
#    address:           'Echo beach, Jalan Batu Mejan No.50, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'http://maitaibali.com/',
#    instagram_handle:  'maitaibali'
#   },
#               {
#    name:              'Gaya Gelato',
#    address:           'Jalan Batu Mejan Echo Beach, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'http://www.gayagelato.com/en/',
#    instagram_handle:  'gayagelatolabsayan'
#   },
#               {
#    name:              "Luigi's Hot Pizza",
#    address:           'Jalan Batu Mejan, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.facebook.com/luigishotpizzabali/',
#    instagram_handle:  'luigishotpizzabali'
#   },
#               {
#    name:              'Deus Ex Machina - Temple of Enthusiasm',
#    address:           'Jl. Pantai Batu Mejan No.8, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'http://deuscustoms.com/',
#    instagram_handle:  'deustemple'
#   },
#               {
#    name:              'Cafe Organic',
#    address:           'Jalan Pantai Batu Bolong No. 58, Canggu, Kuta Utara, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://cafeorganic.co/',
#    instagram_handle:  'cafeorganicbali'
#   },
#               {
#    name:              'Secret Spot',
#    address:           'Jl. Pantai Berawa No.44, Tibubeneng, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'https://www.facebook.com/secretspotbali/',
#    instagram_handle:  'secretspotbali'
#   },
#               {
#    name:              'I Make The Pies',
#    address:           'Jl. Tanah Barak No.8, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.imakethepies.com/',
#    instagram_handle:  'imakethepies'
#   },
#               {
#    name:              'La Bandida',
#    address:           'Jl. Tanah Barak, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.instagram.com/labandida.bali/?hl=en',
#    instagram_handle:  'labandida.bali'
#   },
#               {
#    name:              'The Shady Shack',
#    address:           'Jl. Tanah Barak No.57, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://the-shady-shack.business.site/',
#    instagram_handle:  'theshadyshack'
#   },
#               {
#    name:              'La Baracca',
#    address:           'Jl. Tanah Barak No.51, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.labaraccabali.com/',
#    instagram_handle:  'labaraccabali'
#   },
#               {
#    name:              'I am Vegan Babe Cafe',
#    address:           'Jl. Tanah Barak No.49, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.iamveganbabe.com/',
#    instagram_handle:  'iamveganbabe'
#   },
#               {
#    name:              'Warung Sika',
#    address:           'Jl. Tanah Barak No.45, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       '',
#    instagram_handle:  ''
#   },
#               {
#    name:              "Leroy's Vietnamese",
#    address:           'Jl. Tanah Barak No.43, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.leroysvietnamese.com/',
#    instagram_handle:  'leroys.vietnamese'
#   },
#               {
#    name:              'Two Moods',
#    address:           'Jl. Tanah Barak No.47, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.facebook.com/2moods.bali/',
#    instagram_handle:  'twomoods.bali'
#   },
#               {
#    name:              'XiaHouse Restaurant',
#    address:           'Jl. Tanah Barak, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://www.instagram.com/xiahousebali/?hl=en',
#    instagram_handle:  'xiahousebali'
#   },
#   {
#    name:              'Warung Bu Mi',
#    address:           'Pantai Batu Bolong St No.52, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://warungbumi.business.site/',
#    instagram_handle:  ''
#   },
#   {
#    name:              'Motion Cafe',
#    address:           'Pantai Batu Bolong St No.69B, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://www.motionfitnessbali.com/food/#cafe',
#    instagram_handle:  'motioncafe'
#   },
#     {
#    name:              'Memoh Warung',
#    address:           'Pantai Batu Bolong St No.63B, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://memoh-warung.business.site/',
#    instagram_handle:  ''
#   },
#     {
#    name:              'The Loft',
#    address:           'Pantai Batu Bolong St No.50A, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.theloftbali.co/canggu-1',
#    instagram_handle:  'theloftbali'
#   },
#     {
#    name:              'The Common Cafe',
#    address:           'Pantai Batu Bolong St No.65, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://www.thecommonbali.com/',
#    instagram_handle:  'thecommonbali'
#   },
#     {
#    name:              'Warung Jaba',
#    address:           'No., Jalan Pantai Batu Bolong No.40A, Canggu, Kuta Utara, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://warung-jaba.business.site/',
#    instagram_handle:  ''
#   },
#     {
#    name:              'Cafe Vida',
#    address:           'Pantai Batu Bolong St No.38A, Canggu, North Kuta, Badung Regency, Bali 80351',
#    website_url:       'https://cafe-vida-bali.business.site/',
#    instagram_handle:  'cafe_vida_bali'
#   },
#     {
#    name:              'Bro Resto',
#    address:           'Pantai Batu Bolong St No.34, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://m.facebook.com/BroResto/?ref=bookmarks',
#    instagram_handle:  'broresto'
#   },
#     {
#    name:              'Koi Batu Bolong',
#    address:           'Pantai Batu Bolong St No.32, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.koibatubolong.com/',
#    instagram_handle:  'koicanggu'
#   },
#     {
#    name:              'Gerua Resto',
#    address:           'Pantai Batu Bolong St No.30, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://geruaresto.com/',
#    instagram_handle:  'geruaindia
# '
#   },
#     {
#    name:              'Moana Fish Eatery',
#    address:           'Pantai Batu Bolong St No.28, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.facebook.com/moana.fish.eatery/',
#    instagram_handle:  'moanabali'
#   },
#     {
#    name:              'Crate Cafe',
#    address:           'Jl. Canggu Padang Linjong, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'http://lifescrate.com/',
#    instagram_handle:  'cratecafe'
#   },
#     {
#    name:              "Made's Banana Flour Company",
#    address:           'Pantai Batu Bolong St No.41, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.madesbakery.com/',
#    instagram_handle:  'madesbananaflourco'
#   },
#     {
#    name:              'Machinery Cafe Bal',
#    address:           'No, Jl. Pantai Batu Bolong No.35, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351',
#    website_url:       'https://machinerycafebali.wordpress.com/',
#    instagram_handle:  'machinerycafebali'
#   },
#     {
#    name:              "Oka's Bakery & Cafe",
#    address:           'Pantai Batu Bolong St No.27A, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.facebook.com/okasbakerycanggu',
#    instagram_handle:  'okasbakerycanggu'
#   },
#     {
#    name:              'Warung Dandelion',
#    address:           'Pantai Batu Bolong St No.10, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.facebook.com/dandelioncanggu/',
#    instagram_handle:  'dandelioncanggu'
#   },
#     {
#    name:              'Eden Cafe',
#    address:           'Pantai Batu Bolong St No.8, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://edencafe-bali.com/',
#    instagram_handle:  'edencafebali'
#   },
#     {
#    name:              'Black Sand Brewery',
#    address:           'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.blacksandbrewery.com/',
#    instagram_handle:  'blacksandbrewery'
#   },
#     {
#    name:              'Cloud 9 Canggu',
#    address:           'Jalan Subak Canggu Canggu Kuta, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'http://cloud9bali.com/',
#    instagram_handle:  'cloud9bali'
#   },
#       {
#    name:              "Lola's Cantina Mexicana",
#    address:           '',
#    website_url:       'https://www.lolasbali.com/',
#    instagram_handle:  'lolasbali'
#   },
#       {
#    name:              'Dream Coffee Bali',
#    address:           'Jl. Nelayan No.25a, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali',
#    website_url:       'https://www.facebook.com/dreamcoffeebali/',
#    instagram_handle:  'my_dream_coffee'
#   },
#       {
#    name:              'Superfood Health Bar',
#    address:           'Jl. Nelayan No.33, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       '',
#    instagram_handle:  ''
#   },
#       {
#    name:              'Fat Mermaid',
#    address:           'Jl. Nelayan No.33, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
#    website_url:       'http://www.fatmermaidbali.com/',
#    instagram_handle:  'fatmermaid.bali'
#   },
#       {
#    name:              'Alkaline Restaurant',
#    address:           'Serenity Eco Guesthouse, Jl. Nelayan No.Banjar, Canggu, North Kuta, Badung Regency, Bali 80361',
#    website_url:       'https://www.serenitybali.com/en/restaurant/philosophy/',
#    instagram_handle:  'serenitybali'
#   },
#       {
#    name:              'ZIN Cafe Canggu',
#    address:           'Jl. Nelayan No.78F, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali',
#    website_url:       'http://zin-cafe.com/',
#    instagram_handle:  'zin_cafe'
#   }
]
# p restaurant_attributes.count


Restaurant.create!(restaurant_attributes)
puts "Restaurants created!"
