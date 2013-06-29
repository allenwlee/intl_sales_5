require 'csv'


genres = %w(Horror Comedy Romance Thriller Action Adventure Drama)

genres.each do |g|
  Genre.create(name: g)
end

territories = []
CSV.foreach('public/territories.csv') do |row|
  territories << row[0]
end

territories.each do |t|
  Territory.create(name: t)
end

media = []
CSV.foreach('public/media.csv') do |row|
  media << row[0]
end

media.each do |m|
  Medium.create(name: m)
end


project1 = Project.create(title: "The Deadly Hacker Attack", budget_size: 10_000_000)
User.first.projects << project1
project1.genres << Genre.find(rand(5)+1)
project1.genres << Genre.find(rand(5)+1)

sale1 = Sale.create(ask: 300_000, bid: 200_000, close: 250_000, close_date: Time.now)

sale2 = Sale.create(ask: 1_800_000, bid: 1_600_000, close: 1_750_000, close_date: Time.now)

project1.sales << sale1
project1.sales << sale2

sale1.territories << Territory.find(rand(241)+1)
sale1.territories << Territory.find(rand(241)+1)

sale1.media << Medium.find(rand(10)+1)
sale1.media << Medium.find(rand(10)+1)

project2 = Project.create(title: "The Afghan Courier", budget_size: 2_520_000)
User.first.projects << project2
project2.genres << Genre.find(rand(5)+1)
project2.genres << Genre.find(rand(5)+1)

sale3 = Sale.create(ask: 300_000, bid: 200_000, close: 250_000, close_date: Time.now)

sale4 = Sale.create(ask: 1_800_000, bid: 1_600_000, close: 1_750_000, close_date: Time.now)

project2.sales << sale3
project2.sales << sale4

sale3.territories << Territory.find(rand(241)+1)
sale3.territories << Territory.find(rand(241)+1)

sale3.media << Medium.find(rand(10)+1)
sale3.media << Medium.find(rand(10)+1)


sale4.territories << Territory.find(rand(241)+1)
sale4.territories << Territory.find(rand(241)+1)

sale4.media << Medium.find(rand(10)+1)
sale4.media << Medium.find(rand(10)+1)
