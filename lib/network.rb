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

  def shows_by_actor
    shows_by_actor_hash = {}

    all_actors = actors_by_show.values.flatten.uniq

    all_actors.each do |actor|
      shows_by_actor_hash[actor] = shows_with_actor(actor)
    end

    shows_by_actor_hash
  end

  def shows_with_actor(actor)
    shows.map { |show| show if show.actors.include? actor }.compact
  end

  def prolific_actors
    shows_by_actor.map do |actor, show_array|
      actor if show_array.length > 1
    end.compact
  end

end
