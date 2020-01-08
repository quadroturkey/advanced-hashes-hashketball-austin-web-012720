require "pry"

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {
          player_name: "Alan Anderson",
          number: 0, 
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30, 
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11, 
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1, 
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31, 
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
        ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [{
          player_name: "Jeff Adrien",
          number: 4, 
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0, 
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2, 
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8, 
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33, 
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }]
    }
  }
end


def num_points_scored(player)

  players = game_hash
  players.each do |team, data|
    index = 0 
    while index < data[:players].length 
      if data[:players][index][:player_name] == player 
        return data[:players][index][:points]
      end
      index += 1 
    end
  end
end


def shoe_size(player)
  players = game_hash
  players.each do |team, data|
    index = 0 
    while index < data[:players].length 
      if data[:players][index][:player_name] == player 
        return data[:players][index][:shoe]
      end
      index += 1 
    end
  end
end

def team_colors(team_name)
  players = game_hash
  players.each do |team, data|
    if players[team][:team_name] == team_name
      return players[team][:colors]
    end
  end
end

def team_names()
  teams = []
  game_hash.each do |team, data|
    teams << game_hash[team][:team_name]
  end
  teams
end

def player_numbers(team_name)
  numbers = []
  game_hash.each do |team, data|
    index = 0
    if team_name == data[:team_name]
      while index < data[:players].length
        numbers << data[:players][index][:number]
        index += 1 
      end
    end
  end
  numbers
end

def player_stats(name)
  game_hash.each do |team, data|
    index = 0
    while index < game_hash[team][:players].length
      if game_hash[team][:players][index][:player_name] == name
        player_stats = {
          number: game_hash[team][:players][index][:number], 
          shoe: game_hash[team][:players][index][:shoe],
          points: game_hash[team][:players][index][:points],
          rebounds: game_hash[team][:players][index][:rebounds],
          assists: game_hash[team][:players][index][:assists],
          steals: game_hash[team][:players][index][:steals],
          blocks: game_hash[team][:players][index][:blocks],
          slam_dunks: game_hash[team][:players][index][:slam_dunks]
        }
        return player_stats
        #binding.pry
      end
      index += 1
    end
  end
end

def big_shoe_rebounds()
  big_shoe_guy = {
    :rebounds => 0,
    :shoe_size => 0 
  }
  game_hash.each do |team, data|
    index = 0 
    while index < game_hash[team][:players].length
      if game_hash[team][:players][index][:shoe] > big_shoe_guy[:shoe_size]
        big_shoe_guy[:rebounds] = game_hash[team][:players][index][:rebounds]
        big_shoe_guy[:shoe_size] = game_hash[team][:players][index][:shoe]
      end
      index += 1 
    end
  end
  big_shoe_guy[:rebounds]
end

def most_points_scored()
  most_points_player = {
    :name => "",
    :points => 0 
  }
  game_hash.each do |team, data|
    index = 0 
    while index < game_hash[team][:players].length
      if game_hash[team][:players][index][:points] > most_points_player[:points]
        most_points_player[:name] = game_hash[team][:players][index][:player_name]
        most_points_player[:points] = game_hash[team][:players][index][:points]
      end
      index += 1 
    end
  end
  most_points_player[:name]
end

















