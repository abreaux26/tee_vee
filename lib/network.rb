class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_char = []
    @shows.each do |show|
      show.characters.each do |character|
        if character.name == character.name.upcase && character.salary > 500_000
          main_char << character
        end
      end
    end
    main_char
  end

  def actors_by_show
    actors_by_show_hash = {}

    @shows.each { |show| actors_by_show_hash[show] = show.actors }
    
    actors_by_show_hash
  end

end
