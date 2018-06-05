# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Episode.destroy_all
Season.destroy_all
Serie.destroy_all

def load_image(name)
    filepath = Rails.root.join("db", "images", name)
    File.open(filepath)
end

gameOfThrones = Serie.create!(name: "Game Of Thrones", image: load_image("got.jpg"))
casaDelPapel = Serie.create!(name: "Casa Del Papel", image: load_image("CasaDelPapel.jpg"))
onePunchMan = Serie.create!(name: "One Punch Man", image: load_image("OnePunchMan.jpg"))
defenders = Serie.create!(name: "Defenders", image: load_image("TheDefenders.jpg"))

gameOfThronesS1 = Season.create!(num: 1, serie: gameOfThrones)
gameOfThronesS2 = Season.create!(num: 2, serie: gameOfThrones)
gameOfThronesS3 = Season.create!(num: 3, serie: gameOfThrones)
gameOfThronesS4 = Season.create!(num: 4, serie: gameOfThrones)

casaDelPapelS1 = Season.create!(num: 1, serie: casaDelPapel)
casaDelPapelS2 = Season.create!(num: 2, serie: casaDelPapel)

onePunchManS1 = Season.create!(num: 1, serie: onePunchMan)

defendersS1 = Season.create!(num: 1, serie: defenders)

Episode.create!(name: "L'hiver vient" ,date:"19/06/2011" ,season: gameOfThronesS1)
Episode.create!(name: "La Route Royale" ,date:"19/06/2011" ,season: gameOfThronesS1)
Episode.create!(name: "Lord Snow" ,date:"19/06/2011" ,season: gameOfThronesS1)
Episode.create!(name: "Infirme, Bâtards et Choses brisées" ,date:"19/06/2011" ,season: gameOfThronesS1)
Episode.create!(name: "Le Loup et le Lion" ,date:"19/06/2011" ,season: gameOfThronesS1)
Episode.create!(name: "Une couronne dorée" ,date:"19/06/2011" ,season: gameOfThronesS1)
Episode.create!(name: "Gagner ou mourir" ,date:"19/06/2011" ,season: gameOfThronesS1)
Episode.create!(name: "La pointe de l'Epée" ,date:"19/06/2011" ,season: gameOfThronesS1)
Episode.create!(name: "Baelor" ,date:"19/06/2011" ,season: gameOfThronesS1)
Episode.create!(name: "De feu et de sang" ,date:"19/06/2011" ,season: gameOfThronesS1)

Episode.create!(name: "Le Nord se souvient" ,date:"03/06/2012" ,season: gameOfThronesS2)
Episode.create!(name: "Les Contrées nocturnes" ,date:"03/06/2012" ,season: gameOfThronesS2)
Episode.create!(name: "Ce qui est mort ne saurait mourir" ,date:"03/06/2012" ,season: gameOfThronesS2)
Episode.create!(name: "Le Jardin des os" ,date:"03/06/2012" ,season: gameOfThronesS2)
Episode.create!(name: "Le Fantôme d'Harrenhal" ,date:"03/06/2012" ,season: gameOfThronesS2)
Episode.create!(name: "Les Anciens et les Nouveaux Dieux" ,date:"03/06/2012" ,season: gameOfThronesS2)
Episode.create!(name: "Un homme sans honneur" ,date:"03/06/2012" ,season: gameOfThronesS2)
Episode.create!(name: "Le Prince de Winterfell" ,date:"03/06/2012" ,season: gameOfThronesS2)
Episode.create!(name: "La Néra" ,date:"03/06/2012" ,season: gameOfThronesS2)
Episode.create!(name: "Valar Morghulis" ,date:"03/06/2012" ,season: gameOfThronesS2)

Episode.create!(name: "Valar Dohaeris" ,date:"09/06/2013" ,season: gameOfThronesS3)
Episode.create!(name: "Noires ailes, noires nouvelles" ,date:"09/06/2013" ,season: gameOfThronesS3)
Episode.create!(name: "Les Immaculés" ,date:"09/06/2013" ,season: gameOfThronesS3)
Episode.create!(name: "Voici que son tour de garde est fini" ,date:"09/06/2013" ,season: gameOfThronesS3)
Episode.create!(name: "Baisée par le feu" ,date:"09/06/2013" ,season: gameOfThronesS3)
Episode.create!(name: "L'ascension" ,date:"09/06/2013" ,season: gameOfThronesS3)
Episode.create!(name: "L'Ours et la Belle" ,date:"09/06/2013" ,season: gameOfThronesS3)
Episode.create!(name: "Les Puinés" ,date:"09/06/2013" ,season: gameOfThronesS3)
Episode.create!(name: "Les pluies de Castamere" ,date:"09/06/2013" ,season: gameOfThronesS3)
Episode.create!(name: "Mhysa" ,date:"09/06/2013" ,season: gameOfThronesS3)

Episode.create!(name: "Deux Epées" ,date:"15/06/2014" ,season: gameOfThronesS4)
Episode.create!(name: "Le Lion et la Rose" ,date:"15/06/2014" ,season: gameOfThronesS4)
Episode.create!(name: "Briseuse de chaînes" ,date:"15/06/2014" ,season: gameOfThronesS4)
Episode.create!(name: "Féale" ,date:"15/06/2014" ,season: gameOfThronesS4)
Episode.create!(name: "Premier du nom" ,date:"15/06/2014" ,season: gameOfThronesS4)
Episode.create!(name: "Les lois des dieux et des hommes" ,date:"15/06/2014" ,season: gameOfThronesS4)
Episode.create!(name: "L'Oiseau moqueur'" ,date:"15/06/2014" ,season: gameOfThronesS4)
Episode.create!(name: "La Montagne et la Vipère" ,date:"15/06/2014" ,season: gameOfThronesS4)
Episode.create!(name: "Les veilleurs au rempart" ,date:"15/06/2014" ,season: gameOfThronesS4)
Episode.create!(name: "Les Enfants" ,date:"15/06/2014" ,season: gameOfThronesS4)

Episode.create!(name: "Efectuar lo acordado" ,date:"20/12/2017" ,season: casaDelPapelS1)
Episode.create!(name: "Imprudencias letales" ,date:"20/12/2017" ,season: casaDelPapelS1)
Episode.create!(name: "Error al disparer" ,date:"20/12/2017" ,season: casaDelPapelS1)
Episode.create!(name: "Caballo de Troya" ,date:"20/12/2017" ,season: casaDelPapelS1)
Episode.create!(name: "El dia de la marmota" ,date:"20/12/2017" ,season: casaDelPapelS1)
Episode.create!(name: "La calida Guerre Fria" ,date:"20/12/2017" ,season: casaDelPapelS1)
Episode.create!(name: "Refrigerada inestabilidad" ,date:"20/12/2017" ,season: casaDelPapelS1)
Episode.create!(name: "Tu lo has buscado" ,date:"20/12/2017" ,season: casaDelPapelS1)
Episode.create!(name: "El que la sigue la consigue" ,date:"20/12/2017" ,season: casaDelPapelS1)

Episode.create!(name: "Se acabaron las mascaras" ,date:"06/04/2018" ,season: casaDelPapelS2)
Episode.create!(name: "La cabeza del plan" ,date:"06/04/2018" ,season: casaDelPapelS2)
Episode.create!(name: "Cuestion de eficacia" ,date:"06/04/2018" ,season: casaDelPapelS2)
Episode.create!(name: "Que hemos hecho?" ,date:"06/04/2018" ,season: casaDelPapelS2)
Episode.create!(name: "A contrarreloj" ,date:"06/04/2018" ,season: casaDelPapelS2)
Episode.create!(name: "Bella ciao" ,date:"06/04/2018" ,season: casaDelPapelS2)


Episode.create!(name: "L'Homme le plus fort du monde" ,date:"05/10/2015" ,season: onePunchManS1)
Episode.create!(name: "Le cyborg solitaire" ,date:"12/10/2015" ,season: onePunchManS1)
Episode.create!(name: "Le Savant obstiné" ,date:"19/10/2015" ,season: onePunchManS1)
Episode.create!(name: "Le ninja des temps modernes" ,date:"26/10/2015" ,season: onePunchManS1)
Episode.create!(name: "Le Maitre Ultime" ,date:"02/11/2015" ,season: onePunchManS1)
Episode.create!(name: "La ville de l'effroi" ,date:"09/11/2015" ,season: onePunchManS1)
Episode.create!(name: "L'apprenti suprême !" ,date:"16/11/2015" ,season: onePunchManS1)
Episode.create!(name: "Le Roi des profondeurs" ,date:"23/11/2015" ,season: onePunchManS1)
Episode.create!(name: "Le Pire Danger de tous les temps" ,date:"30/11/2015" ,season: onePunchManS1)
Episode.create!(name: "Le Champion de l'Univers" ,date:"04/12/2015" ,season: onePunchManS1)
Episode.create!(name: "Le Plus Puissant des Héros" ,date:"07/12/2015" ,season: onePunchManS1)

Episode.create!(name: "Le mot qui commence par H" ,date:"18/08/2017" ,season: defendersS1)
Episode.create!(name: "Un sacré crochet du droit" ,date:"18/08/2017" ,season: defendersS1)
Episode.create!(name: "Comportement déplorable" ,date:"18/08/2017" ,season: defendersS1)
Episode.create!(name: "Dragon royal" ,date:"18/08/2017" ,season: defendersS1)
Episode.create!(name: "Refuge" ,date:"18/08/2017" ,season: defendersS1)
Episode.create!(name: "Les cendres" ,date:"18/08/2017" ,season: defendersS1)
Episode.create!(name: "Fish in the Jailhouse" ,date:"18/08/2017" ,season: defendersS1)
Episode.create!(name: "Les Defenders" ,date:"18-08/2017" ,season: defendersS1)

puts "#{Serie.count} series ajoutées"
puts "#{Season.count} saisons ajoutés"
puts "#{Episode.count} episodes ajoutés"