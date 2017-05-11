# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create name: 'admin', password: 'admin'
tags = Tag.create([
	{name: 'Etudiant'}, 
	{name: 'Vendanges'}, 
	{name: 'Soleil'}, 
	{name: 'Neige'}, 
	{name: 'Auberge de jeunesse'}, 
	{name: 'Plage'},
	{name: 'Citytrip'},
	{name: 'Nature'},
	{name: 'Randonnée'},
	{name: 'Gastronomie'}, 
	{name: 'Visites'}
])

image1 = File.new("#{Rails.root}/public/assets/test/1.jpg")
myFirstArticle = Article.new title: "Un exemple de voyage", country: "Espagne", place: "Granada", date: "2016-09-10 12:10:00", lat: 37.17734, lgn: -3.59856, main_image: image1
myFirstArticle.tags << Tag.find_by_name('Soleil')
myFirstArticle.tags << Tag.find_by_name('Randonnée')
myFirstArticle.tags << Tag.find_by_name('Visites')
myFirstArticle.tags << Tag.find_by_name('Auberge de jeunesse')
myFirstArticle.content = "<p>Voici mon premier voyage !<p>"
myFirstArticle.save