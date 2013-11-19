require 'pry'

games = [
  {
    home_team: "Patriots",
    away_team: "Broncos",
    home_score: 7,
    away_score: 3
  },
  {
    home_team: "Broncos",
    away_team: "Colts",
    home_score: 3,
    away_score: 0
  },
  {
    home_team: "Patriots",
    away_team: "Colts",
    home_score: 11,
    away_score: 7
  },
  {
    home_team: "Steelers",
    away_team: "Patriots",
    home_score: 7,
    away_score: 21
  }
]

scores = {"Patriots" => [0,0],
          "Broncos" => [0,0],
          "Colts" => [0,0],
          "Steelers" => [0,0]}
games.each do |game|
  if game[:home_score] > game[:away_score]
    scores[game[:home_team]][0] += 1 
    scores[game[:away_team]][1] += 1 
  else
    scores[game[:away_team]][0] += 1 
    scores[game[:home_team]][1] += 1 
  end
end
scores.each do |key, val|
  puts "#{key} #{val[0]} wins, #{val[1]} losses" 
end