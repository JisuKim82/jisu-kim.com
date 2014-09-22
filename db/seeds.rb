# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

App.destroy_all
Tag.destroy_all

rails = Tag.create!(name: 'Rails')
angularjs = Tag.create!(name: 'AngularJS')
javascript = Tag.create!(name: 'Javascript')
jquery = Tag.create!(name: 'jQuery')
nokogiri = Tag.create!(name: 'nokogiri')
rspec = Tag.create!(name: 'RSpec')
show_all = Tag.create!(name: 'Show All')

apps = App.create([
  {name: 'Language8020', description: 'Language learning application. Based on the premise that 80% of a person\'s daily conversation is derived from 20% of a language\'s vocabulary.', url: 'language-80-20.herokuapp.com', tags: [rails, javascript, jquery, rspec]},
  {name: 'Ebates', description: 'Get Paid To site. Created an affiliated site to direct traffic to ebates.com and used nokogiri to scrape data of the cashback offered by retailers.', url: 'ebates.herokuapp.com', tags: [rails, jquery, javascript, nokogiri]},
  {name: 'Good Read', description: 'List of recommended books. Ability to add/edit favorite books and generates the bookcover based on the ISBN. Implemented a search engine that makes the data searchable based on title, author or description. Records also get persisted to the database.', url: 'goodread.herokuapp.com', tags: [rails, javascript, jquery, rspec]},
  {name: 'Happy-Hr', description: 'List of popular drinks and reviews. Utilized the popular frontend framework AngularJS for the two way data binding.', url: 'happy-hr.herokuapp.com', tags: [angularjs, javascript]},
  {name: 'Poker Sharks', description: 'Bio\'s of the professional poker players. Utilized AngularJS for the two way data binding and created custom directives', url: 'poker-sharks.herokuapp.com', tags: [angularjs, javascript, jquery]},
  {name: 'Device Sniffer', description: 'Application that collects the MAC addresses from the Meraki router setup at the Flatiron School and determines the manufacturers of the devices. Provides real-time data of the devices and displays the data visually using a dashboard.', url: 'devicesniffer.herokuapp.com', tags: [rails, javascript, rspec]},
  {name: 'Rails jQuery', description: 'Applied jQuery techniques learned such as event handlers', url: 'rails-jquery.herokuapp.com', tags: [rails, jquery]},
  {name: 'Vacant Lots', description: 'Parsed vacant lot data from NYC Open Data to find possible locations for community gardents. Utilized Google\'s street view API to show lots with the most potential.', url: 'vacant-lots.herokuapp.com', tags: [rails, javascript, jquery]}
])

puts "#{App.count} Apps created"