# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create!(
	name: "Air Jordan 1 MID \'Chicago Black Toe\'",
	description: 
		%{
			The Air Jordan 1 Mid 'Chicago Black Toe' updates an iconic look. 
			Drawing from the 'Chicago' colorway, the shoe's familiar mix of 
			black, Gym Red and white includes black on the perforated toe box. 
			Underfoot, the midsole houses Air in the heel for cushioning, with 
			a concentric outsole providing traction.
		},
	image: "air-jordan-1-chicago.jpg",
	price: 180.00)

Product.create!(
	name: "Air Jordan 6 RETRO \'UNC\'",
	description: 
		%{
			The Air Jordan 6 Retro 'UNC' released in December 2017, 
			giving the nod to the University of North Carolina's national 
			title earlier in the year. Featuring a black nubuck upper, 
			University Blue accents appear on the tongue, Jumpman branding, 
			lace toggle, pull tab and signature midsole detailing. Visible 
			Air in the heel provides cushioning, while the outsole sports 
			translucent sections.
		},
	image: "air-jordan-6-unc.jpg",
	price: 330.00)

Product.create!(
	name: "Air Jordan 11 RETRO \'CONCORD\'",
	description:
		%{
			The 2018 version of the Air Jordan 11 Retro ‘Concord’ shows 
			off ‘45’ imprinted on the black heel tab in honor of the jersey
			number that Michael Jordan wore when he returned to the NBA 
			after his first retirement. The shoe’s other signature details 
			remain intact, including a white ballistic mesh upper, black 
			patent leather overlays, and an icy translucent outsole.
		},
	image: "air-jordan-11-concord.jpg",
	price: 420.00)