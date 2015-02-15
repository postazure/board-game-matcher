class GamesController < ApplicationController

  def index
    @games = Game.all

    respond_to do |format|
      format.html
      format.json {render json:@games}
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def get_board_game_geek_data
    search_term = params[:search_term]
    game_list = get_game_list(search_term)

    new_games_count = 0
    game_list["boardgames"]["boardgame"].each do |game|
      game_hash = get_game_info(game["objectid"])
      game_record = Game.new(game_hash)

      sleep 0.5
      new_games_count += 1 if game_record.save
    end

    render html:"DB items added #{new_games_count}, in ref. to #{search_term}"
  end

  private
    def get_game_list search_term
      api = "http://www.boardgamegeek.com/xmlapi/"
      json_from_url("#{api}search?search=#{search_term}")
    end

    def get_game_info id
      game_data_api = "http://www.boardgamegeek.com/xmlapi/boardgame/#{id}?"
      game_hash = json_from_url(game_data_api)
      game = game_hash["boardgames"]["boardgame"]

      {
        title:game["name"][0],
        year:game["yearpublished"],
        description:game["description"],
        image:game["image"],
        bggID:game["objectid"],
        player_age:game["age"],
        min_players:game["minplayers"],
        max_players:game["maxplayers"],
        playing_time:game["playingtime"],
        playing_time_min:game["minplaytime"],
        playing_time_max:game["maxplaytime"],
      }
    end

    def json_from_url url
      xml = RestClient.get(url)
      json = Hash.from_xml(xml).to_json
      JSON.parse(json)
    end

end
