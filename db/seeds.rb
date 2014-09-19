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

apps = App.create([
  {name: 'Happy-Hr', description: 'list of all the happy hour drinks...aslkdjf lkasjdlkfj laksjd flkjaskdljf lkjasdklfj lkajsdfk jlkasjdflk alskdjf lkajsdflkj asdflkjas dfljasldkfj alskdjf lkasjdf lkasjdf lkajsfd lkjasdfl jalskdfj laksjdf lkajsdf lkajsdf laksjdf lkajsdf kjasdlkjlksjdf kljasfd ', url: 'happy-hr.herokuapp.com', tags: [angularjs, rails]},
  {name: 'Language8020', description: 'language learning application', url: 'language-80-20.herokuapp.com', tags: [rails, javascript]},
  {name: 'Ebates', description: 'GPT site', url: 'ebates.herokuapp.com', tags: [rails]},
  {name: 'Good Read', description: 'list of favorite books', url: 'goodread.herokuapp.com', tags: [rails, javascript, jquery]}
])

puts "#{App.count} Apps created"