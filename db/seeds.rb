puts 'Cleaning database...'
Wine.destroy_all

puts 'Creating wines...'
Wine.create!(sku: 'angludet-2010', name: 'Chateau Angludet 2010', price_cents: 100000, photo_url: 'https://images-na.ssl-images-amazon.com/images/I/7167IRJ1ugL._SL1500_.jpg')
Wine.create!(sku: 'angludet-2005', name: 'Chateau Angludet 2005', price_cents: 5000, photo_url: 'https://cdn1.wine-searcher.net/images/labels/91/55/chateau-d-angludet-margaux-france-10019155.jpg')
Wine.create!(sku: 'reserve-2013', name: "Reserve d'Angludet 2013", price_cents: 1000, photo_url: 'https://media.lepetitballon.com/catalog/product/cache/1/small_image/640x470/9df78eab33525d08d6e5fb8d27136e95/v/i/vin-2.png')

puts 'Finished!'
