# Write your code here!
require 'pry'

def game_hash
  my_hash = {

    :home=>{
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => {
        "Alan Anderson" => {
          :number =>0,
          :shoe =>16,
          :points =>22,
          :rebounds =>12,
          :assists =>12,
          :steals =>3,
          :blocks =>1,
          :slam_dunks =>1
        },

          "Reggie Evans" => {
            :number =>30,
            :shoe =>14,
            :points =>12,
            :rebounds =>12,
            :assists =>12,
            :steals =>12,
            :blocks =>12,
            :slam_dunks =>7
          },

          "Brook Lopez" => {
            :number =>11,
            :shoe =>17,
            :points =>17,
            :rebounds =>19,
            :assists =>10,
            :steals =>3,
            :blocks =>1,
            :slam_dunks =>15
          },

          "Mason Plumlee" => {
            :number =>1,
            :shoe =>19,
            :points =>26,
            :rebounds =>12,
            :assists =>6,
            :steals =>3,
            :blocks =>8,
            :slam_dunks =>5
          },

          "Jason Terry" => {
            :number =>31,
            :shoe =>15,
            :points =>19,
            :rebounds =>2,
            :assists =>2,
            :steals =>4,
            :blocks =>11,
            :slam_dunks =>1
          }
        }
      },

    :away=>{
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise","Purple"],
      :players => {
        "Jeff Adrien" => {
          :number =>4,
          :shoe =>18,
          :points =>10,
          :rebounds =>1,
          :assists =>1,
          :steals =>2,
          :blocks =>7,
          :slam_dunks =>2
        },

          "Bismak Biyombo" => {
            :number =>0,
            :shoe =>16,
            :points =>12,
            :rebounds =>4,
            :assists =>7,
            :steals =>7,
            :blocks =>15,
            :slam_dunks =>10
          },

          "DeSagna Diop" => {
            :number =>2,
            :shoe =>14,
            :points =>24,
            :rebounds =>12,
            :assists =>12,
            :steals =>4,
            :blocks =>5,
            :slam_dunks =>5
          },

          "Ben Gordon" => {
            :number =>8,
            :shoe =>15,
            :points =>33,
            :rebounds =>3,
            :assists =>2,
            :steals =>1,
            :blocks =>1,
            :slam_dunks =>0
          },

          "Brendan Haywood" => {
            :number =>33,
            :shoe =>15,
            :points =>6,
            :rebounds =>12,
            :assists =>12,
            :steals =>22,
            :blocks =>5,
            :slam_dunks =>12
          }
        }

      }
  }

end

=begin
def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry

        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end

=end


#Need to make it so I'm not using
def num_points_scored(name)
points =[]
  game_hash[:home][:players].keys.each do |x|
      if x == name
        points << game_hash[:home][:players][x][:points]
      end
  end
  game_hash[:away][:players].keys.each do |x|
      if x == name
        points << game_hash[:away][:players][x][:points]
      end
  end
  puts points
  return points[0].to_i
end
#puts num_points_scored("DeSagna Diop")



def shoe_size(name)
shoes =[]
  game_hash[:home][:players].keys.each do |x|
      if x == name
        shoes << game_hash[:home][:players][x][:shoe]
      end
  end
  game_hash[:away][:players].keys.each do |x|
      if x == name
        shoes << game_hash[:away][:players][x][:shoe]
      end
  end
  return shoes[0].to_i
end

def team_colors(name)
colors = []
  if game_hash[:home][:team_name] == name
    colors << game_hash[:home][:colors]
  end
  if game_hash[:away][:team_name] == name
    colors << game_hash[:away][:colors]
  end
  return colors[0]
end

def team_names
teams = []
  teams << game_hash[:home][:team_name]
  teams << game_hash[:away][:team_name]
  #puts teams
  return teams
end
#team_names


def player_numbers (team_name_bah)
  jerseys =[]
  if game_hash[:home][:team_name] == team_name_bah
      game_hash[:home][:players].keys.each do |x|
        jerseys << game_hash[:home][:players][x][:number]
      end
  end
  if game_hash[:away][:team_name] == team_name_bah
      game_hash[:away][:players].keys.each do |x|
        jerseys << game_hash[:away][:players][x][:number]
      end
  end
return jerseys
end

def player_stats(name)
  stats = {}
    game_hash[:home][:players].keys.collect do |x|
        if x == name
          game_hash[:home][:players][x].keys.collect do |x|
            stats[x] = game_hash[:home][:players][name][x]
          end
        end
    end

    game_hash[:away][:players].keys.collect do |x|
        if x == name
          game_hash[:away][:players][x].keys.collect do |x|
            stats[x] = game_hash[:away][:players][name][x]
          end
        end
    end



    return stats
    #return Hash[stats.flatten]
  end
player_stats("Ben Gordon")


def big_shoe_rebounds
#largest feet
shoe_size_array=[]
rebounds = ""

  game_hash[:home][:players].keys.each do |x|
    shoe_size_array << game_hash[:home][:players][x][:shoe]
  end
  game_hash[:away][:players].keys.each do |x|
    shoe_size_array << game_hash[:away][:players][x][:shoe]
  end

largest = shoe_size_array.max

game_hash[:home][:players].keys.each do |x|
  if game_hash[:home][:players][x][:shoe] == largest
    rebounds = game_hash[:home][:players][x][:rebounds]
  end
end
game_hash[:away][:players].keys.each do |x|
  if game_hash[:away][:players][x][:shoe] == largest
    rebounds = game_hash[:away][:players][x][:rebounds]
  end
end


return rebounds
end


=begin
def home_team_name
  game_hash[:home][:team_name]
end
puts home_team_name
=end
